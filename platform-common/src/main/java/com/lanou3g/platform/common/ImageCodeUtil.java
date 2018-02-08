package com.lanou3g.platform.common;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

/**
 *	生成验证码图片工具类
 */
public final class ImageCodeUtil {
	
	private static final char[] CHARS = {  '2', '3', '4', '5', '6',
			'7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'Z' };
	
	private static final int SIZE = 4;
	private static final int LINES = 5;
	private static final int WIDTH = 80;
	private static final int HEIGHT = 30;
	private static final int FONT_SIZE = 30;

	/**
	 * 创建一个验证码图片，其中Map的key封装了
	 * 验证码字符串，Map的value封装了验证码图片。
	 */
	public static Map<String, BufferedImage> createImage() {
		// 用于封装字符串
		StringBuffer sb = new StringBuffer();
		
		// 1.在内存中创建一张图片
		BufferedImage image = new BufferedImage(WIDTH, HEIGHT,
				BufferedImage.TYPE_INT_RGB);
		
		// 2.得到图片
		Graphics graphic = image.getGraphics();
		
		// 3.设置颜色
		graphic.setColor(Color.LIGHT_GRAY);
		// 4.填充区域
		graphic.fillRect(0, 0, WIDTH, HEIGHT);
		
		// 画随机字符
		Random ran = new Random();
		for (int i = 1; i <= SIZE; i++) {
			
			int r = ran.nextInt(CHARS.length);
			graphic.setColor(getRandomColor());
			//粗体加斜体
			graphic.setFont(new Font(null, Font.BOLD + Font.ITALIC, FONT_SIZE));
			graphic.drawString(CHARS[r] + "", (i - 1) * WIDTH / SIZE,
					HEIGHT-2);
			sb.append(CHARS[r]);// 将字符保存
		}
		// 画干扰线
		for (int i = 1; i <= LINES; i++) {
			graphic.setColor(getRandomColor() );
			graphic.drawLine(ran.nextInt(WIDTH), ran.nextInt(HEIGHT),
					ran.nextInt(WIDTH), ran.nextInt(HEIGHT));
		}
		// key：随机生成的字符串  value：含有字符的图片
		Map<String, BufferedImage> map = new HashMap<String, BufferedImage>();
		map.put(sb.toString(), image);
		return map;
	}

	public static Color getRandomColor() {
		Random ran = new Random();
		int idx = ran.nextInt(4);
		switch (idx) {
		case 1:
			return Color.RED;
		case 2:
			return Color.BLUE;
		case 3:
			return Color.MAGENTA;
		case 4:
			return Color.CYAN;
		default:
			 return Color.BLACK;
		}
		 
	}

	public static InputStream getInputStream(BufferedImage image)
			throws IOException {
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(bos);
		encoder.encode(image);
		byte[] imageBts = bos.toByteArray();
		InputStream in = new ByteArrayInputStream(imageBts);
		return in;
	}

}

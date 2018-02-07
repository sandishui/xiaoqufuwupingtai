package com.lanou3g.platform.pojo;

public class SysDict {
    private Integer id;

    private String dictTabname;

    private String dictColname;

    private String dictOption;

    private String dictText;

    private Integer dictSort;

    private String dictName;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDictTabname() {
        return dictTabname;
    }

    public void setDictTabname(String dictTabname) {
        this.dictTabname = dictTabname == null ? null : dictTabname.trim();
    }

    public String getDictColname() {
        return dictColname;
    }

    public void setDictColname(String dictColname) {
        this.dictColname = dictColname == null ? null : dictColname.trim();
    }

    public String getDictOption() {
        return dictOption;
    }

    public void setDictOption(String dictOption) {
        this.dictOption = dictOption == null ? null : dictOption.trim();
    }

    public String getDictText() {
        return dictText;
    }

    public void setDictText(String dictText) {
        this.dictText = dictText == null ? null : dictText.trim();
    }

    public Integer getDictSort() {
        return dictSort;
    }

    public void setDictSort(Integer dictSort) {
        this.dictSort = dictSort;
    }

    public String getDictName() {
        return dictName;
    }

    public void setDictName(String dictName) {
        this.dictName = dictName == null ? null : dictName.trim();
    }
}
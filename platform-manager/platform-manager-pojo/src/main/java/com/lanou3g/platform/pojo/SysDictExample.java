package com.lanou3g.platform.pojo;

import java.util.ArrayList;
import java.util.List;

public class SysDictExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SysDictExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andDictTabnameIsNull() {
            addCriterion("dict_tabname is null");
            return (Criteria) this;
        }

        public Criteria andDictTabnameIsNotNull() {
            addCriterion("dict_tabname is not null");
            return (Criteria) this;
        }

        public Criteria andDictTabnameEqualTo(String value) {
            addCriterion("dict_tabname =", value, "dictTabname");
            return (Criteria) this;
        }

        public Criteria andDictTabnameNotEqualTo(String value) {
            addCriterion("dict_tabname <>", value, "dictTabname");
            return (Criteria) this;
        }

        public Criteria andDictTabnameGreaterThan(String value) {
            addCriterion("dict_tabname >", value, "dictTabname");
            return (Criteria) this;
        }

        public Criteria andDictTabnameGreaterThanOrEqualTo(String value) {
            addCriterion("dict_tabname >=", value, "dictTabname");
            return (Criteria) this;
        }

        public Criteria andDictTabnameLessThan(String value) {
            addCriterion("dict_tabname <", value, "dictTabname");
            return (Criteria) this;
        }

        public Criteria andDictTabnameLessThanOrEqualTo(String value) {
            addCriterion("dict_tabname <=", value, "dictTabname");
            return (Criteria) this;
        }

        public Criteria andDictTabnameLike(String value) {
            addCriterion("dict_tabname like", value, "dictTabname");
            return (Criteria) this;
        }

        public Criteria andDictTabnameNotLike(String value) {
            addCriterion("dict_tabname not like", value, "dictTabname");
            return (Criteria) this;
        }

        public Criteria andDictTabnameIn(List<String> values) {
            addCriterion("dict_tabname in", values, "dictTabname");
            return (Criteria) this;
        }

        public Criteria andDictTabnameNotIn(List<String> values) {
            addCriterion("dict_tabname not in", values, "dictTabname");
            return (Criteria) this;
        }

        public Criteria andDictTabnameBetween(String value1, String value2) {
            addCriterion("dict_tabname between", value1, value2, "dictTabname");
            return (Criteria) this;
        }

        public Criteria andDictTabnameNotBetween(String value1, String value2) {
            addCriterion("dict_tabname not between", value1, value2, "dictTabname");
            return (Criteria) this;
        }

        public Criteria andDictColnameIsNull() {
            addCriterion("dict_colname is null");
            return (Criteria) this;
        }

        public Criteria andDictColnameIsNotNull() {
            addCriterion("dict_colname is not null");
            return (Criteria) this;
        }

        public Criteria andDictColnameEqualTo(String value) {
            addCriterion("dict_colname =", value, "dictColname");
            return (Criteria) this;
        }

        public Criteria andDictColnameNotEqualTo(String value) {
            addCriterion("dict_colname <>", value, "dictColname");
            return (Criteria) this;
        }

        public Criteria andDictColnameGreaterThan(String value) {
            addCriterion("dict_colname >", value, "dictColname");
            return (Criteria) this;
        }

        public Criteria andDictColnameGreaterThanOrEqualTo(String value) {
            addCriterion("dict_colname >=", value, "dictColname");
            return (Criteria) this;
        }

        public Criteria andDictColnameLessThan(String value) {
            addCriterion("dict_colname <", value, "dictColname");
            return (Criteria) this;
        }

        public Criteria andDictColnameLessThanOrEqualTo(String value) {
            addCriterion("dict_colname <=", value, "dictColname");
            return (Criteria) this;
        }

        public Criteria andDictColnameLike(String value) {
            addCriterion("dict_colname like", value, "dictColname");
            return (Criteria) this;
        }

        public Criteria andDictColnameNotLike(String value) {
            addCriterion("dict_colname not like", value, "dictColname");
            return (Criteria) this;
        }

        public Criteria andDictColnameIn(List<String> values) {
            addCriterion("dict_colname in", values, "dictColname");
            return (Criteria) this;
        }

        public Criteria andDictColnameNotIn(List<String> values) {
            addCriterion("dict_colname not in", values, "dictColname");
            return (Criteria) this;
        }

        public Criteria andDictColnameBetween(String value1, String value2) {
            addCriterion("dict_colname between", value1, value2, "dictColname");
            return (Criteria) this;
        }

        public Criteria andDictColnameNotBetween(String value1, String value2) {
            addCriterion("dict_colname not between", value1, value2, "dictColname");
            return (Criteria) this;
        }

        public Criteria andDictOptionIsNull() {
            addCriterion("dict_option is null");
            return (Criteria) this;
        }

        public Criteria andDictOptionIsNotNull() {
            addCriterion("dict_option is not null");
            return (Criteria) this;
        }

        public Criteria andDictOptionEqualTo(String value) {
            addCriterion("dict_option =", value, "dictOption");
            return (Criteria) this;
        }

        public Criteria andDictOptionNotEqualTo(String value) {
            addCriterion("dict_option <>", value, "dictOption");
            return (Criteria) this;
        }

        public Criteria andDictOptionGreaterThan(String value) {
            addCriterion("dict_option >", value, "dictOption");
            return (Criteria) this;
        }

        public Criteria andDictOptionGreaterThanOrEqualTo(String value) {
            addCriterion("dict_option >=", value, "dictOption");
            return (Criteria) this;
        }

        public Criteria andDictOptionLessThan(String value) {
            addCriterion("dict_option <", value, "dictOption");
            return (Criteria) this;
        }

        public Criteria andDictOptionLessThanOrEqualTo(String value) {
            addCriterion("dict_option <=", value, "dictOption");
            return (Criteria) this;
        }

        public Criteria andDictOptionLike(String value) {
            addCriterion("dict_option like", value, "dictOption");
            return (Criteria) this;
        }

        public Criteria andDictOptionNotLike(String value) {
            addCriterion("dict_option not like", value, "dictOption");
            return (Criteria) this;
        }

        public Criteria andDictOptionIn(List<String> values) {
            addCriterion("dict_option in", values, "dictOption");
            return (Criteria) this;
        }

        public Criteria andDictOptionNotIn(List<String> values) {
            addCriterion("dict_option not in", values, "dictOption");
            return (Criteria) this;
        }

        public Criteria andDictOptionBetween(String value1, String value2) {
            addCriterion("dict_option between", value1, value2, "dictOption");
            return (Criteria) this;
        }

        public Criteria andDictOptionNotBetween(String value1, String value2) {
            addCriterion("dict_option not between", value1, value2, "dictOption");
            return (Criteria) this;
        }

        public Criteria andDictTextIsNull() {
            addCriterion("dict_text is null");
            return (Criteria) this;
        }

        public Criteria andDictTextIsNotNull() {
            addCriterion("dict_text is not null");
            return (Criteria) this;
        }

        public Criteria andDictTextEqualTo(String value) {
            addCriterion("dict_text =", value, "dictText");
            return (Criteria) this;
        }

        public Criteria andDictTextNotEqualTo(String value) {
            addCriterion("dict_text <>", value, "dictText");
            return (Criteria) this;
        }

        public Criteria andDictTextGreaterThan(String value) {
            addCriterion("dict_text >", value, "dictText");
            return (Criteria) this;
        }

        public Criteria andDictTextGreaterThanOrEqualTo(String value) {
            addCriterion("dict_text >=", value, "dictText");
            return (Criteria) this;
        }

        public Criteria andDictTextLessThan(String value) {
            addCriterion("dict_text <", value, "dictText");
            return (Criteria) this;
        }

        public Criteria andDictTextLessThanOrEqualTo(String value) {
            addCriterion("dict_text <=", value, "dictText");
            return (Criteria) this;
        }

        public Criteria andDictTextLike(String value) {
            addCriterion("dict_text like", value, "dictText");
            return (Criteria) this;
        }

        public Criteria andDictTextNotLike(String value) {
            addCriterion("dict_text not like", value, "dictText");
            return (Criteria) this;
        }

        public Criteria andDictTextIn(List<String> values) {
            addCriterion("dict_text in", values, "dictText");
            return (Criteria) this;
        }

        public Criteria andDictTextNotIn(List<String> values) {
            addCriterion("dict_text not in", values, "dictText");
            return (Criteria) this;
        }

        public Criteria andDictTextBetween(String value1, String value2) {
            addCriterion("dict_text between", value1, value2, "dictText");
            return (Criteria) this;
        }

        public Criteria andDictTextNotBetween(String value1, String value2) {
            addCriterion("dict_text not between", value1, value2, "dictText");
            return (Criteria) this;
        }

        public Criteria andDictSortIsNull() {
            addCriterion("dict_sort is null");
            return (Criteria) this;
        }

        public Criteria andDictSortIsNotNull() {
            addCriterion("dict_sort is not null");
            return (Criteria) this;
        }

        public Criteria andDictSortEqualTo(Integer value) {
            addCriterion("dict_sort =", value, "dictSort");
            return (Criteria) this;
        }

        public Criteria andDictSortNotEqualTo(Integer value) {
            addCriterion("dict_sort <>", value, "dictSort");
            return (Criteria) this;
        }

        public Criteria andDictSortGreaterThan(Integer value) {
            addCriterion("dict_sort >", value, "dictSort");
            return (Criteria) this;
        }

        public Criteria andDictSortGreaterThanOrEqualTo(Integer value) {
            addCriterion("dict_sort >=", value, "dictSort");
            return (Criteria) this;
        }

        public Criteria andDictSortLessThan(Integer value) {
            addCriterion("dict_sort <", value, "dictSort");
            return (Criteria) this;
        }

        public Criteria andDictSortLessThanOrEqualTo(Integer value) {
            addCriterion("dict_sort <=", value, "dictSort");
            return (Criteria) this;
        }

        public Criteria andDictSortIn(List<Integer> values) {
            addCriterion("dict_sort in", values, "dictSort");
            return (Criteria) this;
        }

        public Criteria andDictSortNotIn(List<Integer> values) {
            addCriterion("dict_sort not in", values, "dictSort");
            return (Criteria) this;
        }

        public Criteria andDictSortBetween(Integer value1, Integer value2) {
            addCriterion("dict_sort between", value1, value2, "dictSort");
            return (Criteria) this;
        }

        public Criteria andDictSortNotBetween(Integer value1, Integer value2) {
            addCriterion("dict_sort not between", value1, value2, "dictSort");
            return (Criteria) this;
        }

        public Criteria andDictNameIsNull() {
            addCriterion("dict_name is null");
            return (Criteria) this;
        }

        public Criteria andDictNameIsNotNull() {
            addCriterion("dict_name is not null");
            return (Criteria) this;
        }

        public Criteria andDictNameEqualTo(String value) {
            addCriterion("dict_name =", value, "dictName");
            return (Criteria) this;
        }

        public Criteria andDictNameNotEqualTo(String value) {
            addCriterion("dict_name <>", value, "dictName");
            return (Criteria) this;
        }

        public Criteria andDictNameGreaterThan(String value) {
            addCriterion("dict_name >", value, "dictName");
            return (Criteria) this;
        }

        public Criteria andDictNameGreaterThanOrEqualTo(String value) {
            addCriterion("dict_name >=", value, "dictName");
            return (Criteria) this;
        }

        public Criteria andDictNameLessThan(String value) {
            addCriterion("dict_name <", value, "dictName");
            return (Criteria) this;
        }

        public Criteria andDictNameLessThanOrEqualTo(String value) {
            addCriterion("dict_name <=", value, "dictName");
            return (Criteria) this;
        }

        public Criteria andDictNameLike(String value) {
            addCriterion("dict_name like", value, "dictName");
            return (Criteria) this;
        }

        public Criteria andDictNameNotLike(String value) {
            addCriterion("dict_name not like", value, "dictName");
            return (Criteria) this;
        }

        public Criteria andDictNameIn(List<String> values) {
            addCriterion("dict_name in", values, "dictName");
            return (Criteria) this;
        }

        public Criteria andDictNameNotIn(List<String> values) {
            addCriterion("dict_name not in", values, "dictName");
            return (Criteria) this;
        }

        public Criteria andDictNameBetween(String value1, String value2) {
            addCriterion("dict_name between", value1, value2, "dictName");
            return (Criteria) this;
        }

        public Criteria andDictNameNotBetween(String value1, String value2) {
            addCriterion("dict_name not between", value1, value2, "dictName");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}
package com.web.bean;
//答题卡
import java.util.*;
public class Answers {
    int t_id;
    String answer;
    private Map<Integer, String> answers = new HashMap<>();

    public Map<Integer, String> getAnswers() {
        return answers;
    }

    public void setAnswers(Map<Integer, String> answers) {
        this.answers = answers;
    }

    // 修改构造方法
    public Answers(int t_id, String answer) {
        super();
        this.t_id = t_id;
        this.answer = answer;
        // 在构造方法中根据 t_id 和 answer 初始化 answers
        this.answers.put(t_id, answer);
    }
	
}

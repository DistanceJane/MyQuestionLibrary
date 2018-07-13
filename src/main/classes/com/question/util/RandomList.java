package com.question.util;

import com.question.beans.Choice;
import com.question.beans.Judgement;
import com.question.beans.Shorter;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class RandomList {

    /**
     * 在list中随机抽取count个不重复的数,然后将对应的试题id列表返回，将这些数返回去。
     * @param list
     * @param count
     * @return
     */
    public static List<Choice> getChoiceRandomList(List<Choice> list, int count){
        // 如果数组长度小于count，直接将其所有id返回
        if(list.size() < count){
            return list;
        }

        Random random = new Random();
        List<Integer> tempList = new ArrayList<>();
        List<Choice> choiceList = new ArrayList<>();
        int temp = 0;
        // 随机取数，每次取一个
        for(int i = 0 ; i < list.size(); i++){
            temp = random.nextInt(list.size());
            if(!tempList.contains(temp)){
                tempList.add(temp);
                choiceList.add(list.get(temp));//把id添加进去
            }else{
                i--;
            }
        }
        return choiceList;
    }

    public static List<Judgement> getJudgementRandomList(List<Judgement> list, int count){
        // 如果数组长度小于count，直接将其所有id返回
        if(list.size() < count){
            return list;
        }

        Random random = new Random();
        List<Integer> tempList = new ArrayList<>();
        List<Judgement> judgementList = new ArrayList<>();
        int temp = 0;
        // 随机取数，每次取一个
        for(int i = 0 ; i < list.size(); i++){
            temp = random.nextInt(list.size());
            if(!tempList.contains(temp)){
                tempList.add(temp);
                judgementList.add(list.get(temp));//把id添加进去
            }else{
                i--;
            }
        }
        return judgementList;
    }

    public static List<Shorter> getShorterRandomList(List<Shorter> list, int count){
        // 如果数组长度小于count，直接将其所有id返回
        if(list.size() < count){
            return list;
        }

        Random random = new Random();
        List<Integer> tempList = new ArrayList<>();
        List<Shorter> shorterList = new ArrayList<>();
        int temp = 0;
        // 随机取数，每次取一个
        for(int i = 0 ; i < list.size(); i++){
            temp = random.nextInt(list.size());
            if(!tempList.contains(temp)){
                tempList.add(temp);
                shorterList.add(list.get(temp));//把id添加进去
            }else{
                i--;
            }
        }
        return shorterList;
    }
}

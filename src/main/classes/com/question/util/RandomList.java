package com.question.util;

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
    public static List getRandomList(List list, int count){
        // 如果数组长度小于count，直接将其所有id返回
        if(list.size() < count){
            return list;
        }

        Random random = new Random();
        List<Integer> tempList = new ArrayList<>();
        List myList = new ArrayList<>();
        int temp = 0;
        // 随机取数，每次取一个
        for(int i = 0 ; i < count; i++){
            temp = random.nextInt(list.size());
            if(!tempList.contains(temp)){
                tempList.add(temp);
                myList.add(list.get(temp));//把id添加进去
            }else{
                i--;
            }
        }
        return myList;
    }
}

//
//  LinkedList.swift
//  couchbeat
//
//  Created by Stephen Butler on 11/22/15.
//  Copyright © 2015 com.stephbu. All rights reserved.
//

public class LinkedList<T>
{
    var head : Datum<T>?
    var last : Datum<T>?
    
    func Add(item : T)
    {
        if(head == nil)
        {
            head = Datum(value:item)
            last = head
        }
        else
        {
            last?.Next = Datum(value:item)
        }
    }
    
    func Remove(item : T)
    {
//        var next = head
//        if(next == nil)
//        {
//            return
//        }
//        
//        if(next?.Value == item)
//        {
//            
//        }
    }
}
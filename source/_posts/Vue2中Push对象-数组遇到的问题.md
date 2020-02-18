---
title: Vue2中Push对象/数组遇到的问题
date: 2017-06-03 22:45:33
tags: [随笔] 
categories: 随笔
---

- ```
  var vm = new Vue({
          el: "#tbody",
          data: {
              items: []
          }
      })
      
      ...

  vm.items.push({
      index: i + 1,
      domain: data[i].domain,
      price: data[i].price,
      trade_type : data[i].trade_type,
      endtime : data[i].endtime,
      platform : data[i].platform
  })
  ```

- 如上图 Vue里当想push 对象/数组到html上时 直接push(this.text)行不通，需要大括号写法，将数据以对象数组形式放入。

- 另一种写法  vm.index.set(i,{text:i+1});vm.domainset(i,{text:data[i].domain}) ;vm.price$set(i,{text:data[i].price}) ;

  就是Vue.set(object, key, value) 方法将响应属性添加到嵌套的对象上;（就是vue2.x的$set）。
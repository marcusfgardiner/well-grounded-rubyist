# Practical examples of what reassignment means VERSUS changing the underlying values of objects

2.3.0 :001 > a = 3
 => 3 
2.3.0 :002 > b = 5
 => 5 
2.3.0 :003 > a = b
 => 5 
2.3.0 :004 > a = 15
 => 15 
2.3.0 :005 > puts b
5
2.3.0 :006 > puts a
15
2.3.0 :007 > a = b
 => 5 
2.3.0 :008 > puts a
5
2.3.0 :009 > puts b
5
2.3.0 :010 > quit

-----------------------------------

2.3.0 :001 > a = 3
 => 3 
2.3.0 :002 > b = 5
 => 5 
2.3.0 :003 > b + 5
 => 10 
2.3.0 :004 > puts b
5
2.3.0 :005 > b = b + 5
 => 10 
2.3.0 :006 > puts a
3
2.3.0 :007 > a = b
 => 10 
2.3.0 :008 > b = b + 5
 => 15 
2.3.0 :009 > puts a
10
2.3.0 :010 > puts b
15
2.3.0 :011 > quit
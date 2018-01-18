# Practical examples of what reassignment means VERSUS changing the underlying values of objects
# Each ruby object has a unique object id. a and b refer to these unique object IDs, but are not these unique object ids
# Therefore, when you do a = b, the value of the true object that sits behind a with a unique object id changes values, but there is still a separate unique object sitting behind b
# Therefore, when you then change the value of b, the value of the unique object b refers to changes, but the value of the unique object behind b does not


#!!!KEY! Will work differently for mutable objects
# e.g. strings => will change BOTH underlying objects, as it will link the underlying object IDs => the same exact Object
# Different to immutable numbers as below, where it only changes the specific object you select to change
# As there is only ONE true 5, with one specific object ID
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

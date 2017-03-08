# SWGFlurry
http://www.swgflurry.com/

http://www.swgflurry.com/forum/

Core3 http://review.swgemu.com

Discord Voice Chat
https://discord.gg/eN82pdc

Run in gdb debug mode
when you get to the (gdb) prompt type r (or run) then enter 
gdb core3
(gdb) r or run

Run Unit Integrity Test
/home/vagrant/bin/swgemu runUnitTests





Table of Contents<br>
1	Preface	3<br>
2	Code Formatting	4<br>
2.1	K&R Coding Style	4<br>
2.2	Coding Techniques	4<br>
2.2.1	Global Variables and Functions	4<br>
2.2.2	Abbrevations and Special Characters	4<br>
2.2.3	Class Naming Conventions	4<br>
2.2.4	Class Member and Method Naming Conventions	4<br>
2.2.5	Class Method Parameter Naming Conventions	4<br>
2.2.6	Local Variable Naming Conventions	4<br>
2.2.7	Method Blocks	4<br>
2.2.8	Block Structuring	4<br>
2.2.9	File Structuring	4<br>
2.2.10	Method Reusability	4<br>
2.2.11	Macros	5<br>
3	Concurrent Programming	6<br>
3.1	Overview	6<br>
3.2	Race Conditions	6<br>
3.3	Locks	6<br>
3.4	Dead Locks	6<br>
4	Project SWG Emu	7<br>
4.1	Code Formatting	7<br>
4.2	Concurrency	7<br>
4.2.1	Locking System	7<br>
4.2.2	Practices	7<br><br>

2.0	Code Formatting<br>

2.1	K&R Coding Style<br>

2.2	Coding Techniques<br>

2.2.1	Global Variables and Functions<br>
No global variable or functions, use static members and methods in a proper class.<br><br>
2.2.2	Abbrevations and Special Characters<br>
Do not use any abbrevations or any special marks (like _) in names and use the following four naming conventions.<br><br>
2.2.3	Class Naming Conventions<br>
All tags of the classnames, including the first, must start with a capital letter (e.g. ZoneServerPacketHandler).<br><br>
2.2.4	Class Member and Method Naming Conventions<br>
Class member and methods must not start with a capital but their other tags must start with one (e.g handlePositionUpdatePacket()).<br><br>
2.2.5	Class Method Parameter Naming Conventions<br>
Method parameters cannot contain capital letters altough they might use some kind of abbreavtion if needed.<br><br>
2.2.6	Local Variable Naming Conventions<br>
Local variables cannot contain capital letters as well.<br><br>
2.2.7	Method Blocks<br>
Do not create method blocsk longer then 100 lines, it makes code very hard to see through. Divide the functionality into more subfunctions. This is a very common mistake along with the next one!<br><br>
2.2.8	Block Structuring<br>
Avoid having more then 3 sub blocks in cycles and conditional cases. This also makes the code very very unclean.<br><br>
2.2.9	File Structuring<br>
For each class create their own header and source (if it is needed) files. Do not mix classes into different sources.<br><br>
2.2.10	Method Reusability<br>





3	Concurrent Programming<br>
Concurrent programming is among the most difficult thing to do thus not only need deep knowledge of the problem but a lot of experience as well. We cannot give you the later but we are going to discuss some of the basic aspects.<br>
3.1	Overview<br>
Concurrent programming is executing multiple tasks in parallel which means two task can not only be executed in any order but even at the same time. Note that true parallelism does not exists on single core machine since it simply switches between tasks but systems with multi cores does achieve real parallelism.<br> 
Since tasks can be interrupted any time by the processor, concurrency can lead to many nasty problems such as race conditions.  <br>
3.2	Race Conditions<br>
Tasks in one process share the same memory so there is a good chance that two task can access and overwrite the same memory location same time. Another issue can happen when a task does not finish before being interrupted so other tasks can change the memory locations it used to compute one result. <br>
3.3	Locks<br>
The most typical solution for synchronization issues is done by locks to block threads from altering state while a single thread makes changes.  Locks can be logically assigned to objects or even simple portions of memory to protect tasks from manipulating them at the same time.<br>
One of the most difficult problem with locks is to determine when and how a task should acqure or release a lock of series of locks.  This puts a lot of pressure on the programmers because it is very hard to test and debug if a system is going to work properly in any and all scenarios.<br>
The naive method of locking objects is to lock everything on use. In practice this would lead to serious overhead so one should understand the scenarios how objects interact and eliminate unnecessary locks.<br>
3.4	Dead Locks<br>
A dead lock happens when all tasks are waiting for a lock to be acquired hence there are no threads that can release some of them. The following example is going to illustrate  what can lead to a situation like this.<br>
Lets say we have two threads and two locks. Thread 1 is going to try to acqure lock A then lock B while thread 2 is going to try to acquire lock B then lock A. In the worst case the two threads are going to be executed same time when thread 1 acquired lock A  and thread 2 acquired lock B in the fisrt step. Now thread 1 cannot get lock A since thread 2 holds it and thread 2 cannot acquire lock A cause of the same reason.<br>
To solve this in the first round one have to be very careful ordering the locks. There has to be certain levels of objects that you lock in order.  One issue comes when you have to lock two of the same type of object during one task.  We introduced a method called cross locks over these 2 objects that will automaticly solve the situation for you.<br>




4	SWG Flurry Contribute<br>
4.1	Code Formatting<br>
Please follow all the instructions from the Coding Techniques section. In some cases the format source option can assist you by the Eclipse IDE.<br>
4.2	Code Submission<br>
Commiting to the Git repository please always mark your activities with one of the following tags: [fixed], [added], [deleted], [modified], [updated]<br>
4.3	Concurrency<br>
4.3.1	Locking System<br>
In the works..<br>
4.3.2	Practices<br>
•	During a thread release the locks exactly in the opposite order then you locked them.  Unlocking them would not really cause any technical problems but it is lot more clean to manage them this way.<br>
•	Exceptions can happen anywhere in the code that will skip the rest of the block throughout many functions as long as it is not catched. This is why you should always put a catch try block around a lock-unlock block.<br>
•	Locking two of the same type of objects in one thread should always be made with cross locks { object1->lock(object2) }. This will prevent any deadlocks among this type of objects.  For example we cross lock creatures when one is interacting with the other. During the cross lock the object in the parameter must be locked previously.<br>


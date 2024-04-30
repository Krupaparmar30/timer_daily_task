# timer_daily_task
<p>
  Pr-5.1(Flutter Buttons)
  <img src="https://github.com/Krupaparmar30/timer_daily_task/assets/149374671/d827cc2f-31f0-488d-ba4a-6d9fb2940caf"width=22% height=35%>
  <a href="https://github.com/Krupaparmar30/timer_daily_task/blob/master/lib/daliy_task/flutter_buttons/fluffer_button.dart">Click here </a>
</p>

# Asynchronous Programming
# 1)What is Asynchronous Programming?

-> Asynchronous Programming is a Programming paradigm that allows tasks or opreations to run independently and concurrently, without waiting for each other to complete before moving on to the next task.

->In traditional synchronous Programming, tasks are executed one after anthoer,and the program waits for each task to finish before proceeding to the next one.

# 2)What is Future Class ?

->Simply put,the Future class represents a Future result of an Asynchronous computation.

->This result will eventually appear in the Future after the processing is complete.

# 3)What is Duration class & Future.delayed() constructor with Example ?

* Duration class:->

The Duration class represtans an interval of time in seconds or nanoseconds and is most suited for handling shorter amounts of time, cases that require more precision.

* Future.delayed() constructor:->

Enables you to create a Future that runs its computatioin after a prespecified Duration.

* Example:

```bash
void main()
{
  print('hello dart');

  Future.delayed(
      
    Duration(
      seconds: 1,
    ),
    () {
      print("hello python");
    },
  );

}
```

# 4)What is the Use of the async & await keyword?

 * async :->
 
 async keyword is used to mark a function as asynochronous.an asynochronous function can perform tasks that may take some time to complete , such as fetching data from a network or reading from a fils.

 ->async keyword allows the function to use the await keyword inside it.

 * await :->

 The await keyword is used to pause the execution of an asynchronous function until a particular asynchronous operation is completed. It can only be used inside an async function. 

# 5)What is Recursion ? With Example.

* A require function is a function that calls itself.The base case is the conditioin when Recursion stops.

* Example :


```bash
void main()
{

  print('hello krupa');

   int factorial(int n)
   
   {

    if(n<=1)
    {
       return 1;
    else
     {
       return k*fact(k-1);
     }
     }
   }

}
```

# 6)What is Timer class with example ?

A Countdown timer that can be configured to fire once or repeatedly.

* Example:
```bash
void main()
{
  
  Timer(

    Duration(seconds: 1),
    () {

    print("hello javaaa");
    },
    );

}

```

# 7)What is Timer.periodic and use with Example?

A periodic timer is particularly powerful because it allows you to schedule a callback to be executed repeatedly with a specified Duration between each call.

* Example:
import 'dart:io';
import 'dart:async';

```bash
void main()
{

   Timer.periodic(
    
    Duration(seconds: 1),
    (timer) {
      print("Radhe Krishnaa");
    },
   );

}

```





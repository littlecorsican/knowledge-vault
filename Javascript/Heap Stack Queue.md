# Heap, Stack, Queue

## Call Stack
Functions stack up when called, run to completion, pop off when done

## Heap
Data is stored in a big pile of memory

## Queue
Messages get in line to send function calls to the stack

## Event Loop
Infinite while pops 1st message from queue & sends call to stack ( if empty )


## How does it work
Data lives in Heap
Browser API -> Queue -> Stack -> Heap 


### 1. Heap
The heap is a region of memory used for dynamic memory allocation. In JavaScript, objects and arrays are stored in the heap.

* What gets stored in the heap?

* Objects (including arrays and functions)
* Dynamic data structures like linked lists or trees

* Heap Memory Management:

* The heap allows for the creation of data structures whose sizes are not known in advance. When you create objects or arrays, they are allocated in the heap.

* The memory in the heap is not managed in a linear way, unlike the stack. It is more flexible and dynamic, but because of this flexibility, it requires garbage collection to reclaim unused memory.
Example:


let person = { name: 'Alice', age: 25 };  // person is stored in the heap


### 2. Stack
The stack is a region of memory used for storing primitive values (like numbers, strings, and booleans) and the execution context for function calls.

* What gets stored in the stack?

* Primitive values (e.g., numbers, strings, booleans)
* Function calls (activation records or "stack frames")

* How does the stack work?

* The stack follows the Last In, First Out (LIFO) principle: when a function is called, it gets added to the stack, and when the function finishes executing, it is removed from the stack.

* Each time a function is called, a stack frame is created. The stack frame contains:

* The function's local variables.
* The return address (where the function should continue once it finishes).
* The stack is limited in size, which can result in a stack overflow if there are too many nested function calls (deep recursion).

* Example:


function add(a, b) {
  return a + b;
}

let result = add(2, 3);  // The add function call creates a stack frame


### 3. Queue (Event Queue)
The queue in JavaScript is an essential part of asynchronous programming. It is part of the event loop mechanism, where tasks (callbacks, promises, etc.) are queued for execution after the current synchronous code finishes running.

* What goes into the queue?

* Callback functions: Functions that are scheduled to run after asynchronous operations (like setTimeout, fetch, or I/O operations).

* Microtasks (Promises): Promises and their then()/catch() handlers are placed into a microtask queue (a special kind of queue with higher priority over the regular task queue).

* How does the queue work?

* JavaScript uses a single-threaded event loop. When synchronous code is executed, it runs first. Once the call stack is empty (i.e., there are no more functions to execute), the event loop checks the queue for any tasks or callbacks that need to be executed.

* If there are tasks in the queue, they are taken one by one and pushed onto the call stack to be executed.
* Microtasks are processed before macrotasks (like setTimeout callbacks) to ensure they are handled first.

* Example of a queue with setTimeout and Promises:


console.log("Start");

setTimeout(() => {
  console.log("setTimeout"); // Goes to the queue (macrotask)
}, 0);

Promise.resolve().then(() => {
  console.log("Promise");  // Goes to the microtask queue
});

console.log("End");


**Execution Order:**

1. console.log("Start") is logged.
2. console.log("End") is logged.
3. The promise handler (console.log("Promise")) is executed from the microtask queue.
4. The setTimeout callback is executed from the macrotask queue.

**How the Execution Works (Event Loop):**
1. Call Stack: Executes the synchronous code (function calls).
2. Heap: Stores objects/arrays dynamically.
3. Event Queue: Holds asynchronous tasks (callbacks) that are to be executed once the call stack is empty.
4. Microtask Queue: Holds promises and their handlers with higher priority than macrotasks in the event queue.

**Summary:**
* Heap: Stores dynamic data structures (objects, arrays, etc.).
* Stack: Stores function calls and primitive data types.
* Queue: Holds asynchronous tasks (callbacks, promises) to be executed when the call stack is empty.
Understanding how these memory areas and queues work together helps you manage the flow of synchronous and asynchronous code in JavaScript, improving performance and memory usage.


Stack
The stack is an abstract datatype used in computer programming. The stack is how we order functions that have been called synchronously, or in order. Both synchronous and asynchronous functions are added to the stack when called. Functions on the stack execute in a first in, last out order, so the most recent function placed on the stack will execute first. When an asynchronous function starts to execute in the stack it is moved to the heap.

Heap
The heap holds asynchronous functions after they are called on the stack. Asynchronous functions are chaotic in nature; we do not know how long it will take an asynchronous function to resolve, which is in contrast to a synchronous function which resolves as quickly as the code it contains takes to execute. Because of this, the heap allows asynchronous functions to leave in the order they receive their return value, a promise, independent of the order in which they were put in the heap. This means that an asynchronous function put into the heap more recently than another asynchronous function can leave the heap earlier than the other asynchronous function, no problem. An asynchronous function moves to the queue when it leaves the heap.

Queue
The queue is where asynchronous functions wait to finish executing. All asynchronous functions return a promise, and the queue is where asynchronous functions will wait to process that promise. The queue works in an opposite manner from the stack — the queue executes functions first in, first out. The queue must wait until the stack is empty before it can send its oldest asynchronous function to the stack. This is to prevent asynchronous functions from returning and interrupting other processes that are running.

Bringing It All Together
Asynchronous functions and the stack, heap, and queue allow us to build a much more pleasant and capable experience for our users. Imagine a scenario where a user wants to play a video from an older website. The video’s host implements some kind of timeout feature, where if it hasn’t been played in so many hours it puts its servers to sleep to save energy, which causes the video to take longer to load.

Because this video is the main function of the site the developer wants it to load first thing. The other parts of the site, like the style from the CSS and any other fetched data, is set to load after this video starts to load. So, when a user visits this site the video begins to load before anything else.

Without the use of asynchronous functions and the stack, heap, and queue this would be an abysmal user experience! The user would visit the page, the video would begin to load, the servers would take time to wake and return the video content, then the rest of the page’s data would load, possibly including more lengthy data fetches. All the while the user has more than likely moved on to another site because this site took so long to present them with any useful data.

With asynchronous functions we can load the rest of the site data while the video loads. The user visits the site, the video begins to load, and because it is an asynchronous function it is pushed to the heap. The rest of the site’s content can load regardless of when the video loading function returns a promise and is pushed to the queue. After the stack is clear the function to show and play the video is pushed to the stack and finishes executing. All the while the user has seen the other content load and recognizes that activity is happening, even if the video they are at the site to see takes a little longer to load than normal.

I hope this explanation of the stack, heap, and queue has been helpful for recognizing their importance and has sparked some interest in learning more. While you may not use this information every day in your career as a web developer, it is important to understand how the technology we use works so we can better utilize it and know what is not working when it breaks. Below are some links for learning more on this topic.
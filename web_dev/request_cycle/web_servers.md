### What are some of the key design philosophies of the Linux operating system?

**Small is beautiful *and* Each program does one thing well**

Each command in Linux is small, meaning there are few lines of code per command, and each performs a specific task.
Because they are small and specific, these commands can operate very quickly.

**Choose portability over efficiency *and* Use shell scripts to increase leverage and portability**

Running a shell script or a computer program that can be run by the command line interpreter, is more efficient in the long run than writing a program in a compiled language and having to test it outside of the
shell. Shell scripts can be run on many otherwise incompatible systems.

**Use software leverage**
Using command line commands uses code written by programmers for the Linux operating system. This means that
when we test or use these commands, we do not have to write any of these commands ourselves.

###In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?###

A VPS is a type of web hosting server that separates the physical server into multiple virtual servers. These servers are each capable
of performing independent operations of each other, with each having its own operating system and hardware resources dedicated to it.
Some of the advantages of using a VPS include customization and flexibility when it comes to management and structuring. It is more cost
efficient than a dedicated server, and more expensive than the shared server, but because of segregation, there is no direct effect of
one's server over another's, as with a shared server. Its performance is much higher than a shared server because it can allocate a
certain amount of CPU usage, memory, and RAM. It works best for small and medium size websites. It is also very secure because with each server
being separate; each website gets its own operating system and resources. Thus, making it difficult for another server to invade.

###Why is it considered a bad idea to run programs as the root user on a Linux system?###
As the root user, you are all powerful in what you can effect in your operating system. There is no permission blocks
stopping you from making mistakes, and making an everlasting decision. Bugs and malicious software as root user has access to all
of your data on a system, so there are many security issues as well, as they have full permissions on your system.
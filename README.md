# SAR-attitude-control-using-RL
In this study we focus on a specific type of imaging satellites ”SAR” which illuminate earth surface by
sending and receiving waves. Flexibility must be addressed in modeling phase due to the antenna and
flexible appendages.Using an improved version of backstepping controller lets the satellite converge
to one of two equilibria depending on initial values.This controller not only stabilizes the system
but also enables reference tracking problem. Deep reinforcement learning provides the controller
with optimized parameters and improves the temporal characteristics of the system.Finally we have a
controlled system which is able to track desired Euler angles(or equivalently ’quaternions’)references
starting from any initial angles and angular velocity.




 
 <figure>
 <center>
 <img src='https://i.postimg.cc/N0sSVNFC/simulink-overall.jpg' width="800" 
      height="600"/>
 <figcaption>implemented Simulink scheme</figcaption>
 </center>
 </figure>
 


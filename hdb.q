reload:{@[system;"l ",d:.conf.DATA;{x}];-1"Reloaded ",d," on ",string .z.p;}
reload[]

\d .qi

tcounts:{
  $[count[a:tables`.]&`date in key`.;
    exec t!n from({update t:x from first select n:count i from x where date=max date}each a);
    (0#`)!0#0]
  }

\d .
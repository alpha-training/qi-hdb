reload:{@[system;"l ",d:.conf.HDB;{x}];-1"Reloaded ",d," on ",string .z.p;}
reload[]

tcounts:{
  $[count[a:tables`.]&`date in key`.;
    ({[d;a]`date`t`n#update date:d,t:a from first select n:count i from a where date=d}[max date]each a);
    flip`date`t`n!(0#0Nd;0#`;0#0)]
  }

preview:{[t;n] select[n]from t where date=max date}
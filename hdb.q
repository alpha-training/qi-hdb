reload:{
  if[.qi.exists db:.hdb.mydir;system"l ",sdb:.qi.spath db;.qi.info"Reloaded ",sdb];
  if[not`date in key`.;`date set"d"$()];
  }

tcounts:{
  $[count[a:tables`.]&`date in key`.;
    ({[d;a]`date`t`n#update date:d,t:a from first select n:count i from a where date=d}[max date]each a);
    flip`date`t`n!(0#0Nd;0#`;0#0)]
  }

preview:{[t;n] select[n]from t where date=max date}

.hdb.init:{
  .hdb.mydir:.qi.path(.conf.DATA;.proc.self.stackname;`hdb;.proc.self.name);
  reload[];
  }
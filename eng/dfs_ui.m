%%
close all
clear all
clc

% Setup the figure
fig = figure;
set(fig,'color',[.8 .8 1]);
dfs = data_fields(fig,'h_leading', 5, 'txt_fontsize', 12);
%%
%dfs.h_padding = 0;
rec = 'engeng_1';
dfs.start_col();
dfs.field(rec,'SysTDrift','%6.3f');
dfs.field(rec,'CPU_Pct', '%5.1f');
dfs.field(rec,'memused', '%5.1f');
dfs.field(rec,'Disk', '%5.1f');
dfs.end_col();
%%
dfs.new_graph(rec, 'CPU_Pct', 'new_fig');
%%
% Setup the data connection
dfs.connect('127.0.0.1', 1080);
%%
dfs.disconnect();
close all
clear all
clc

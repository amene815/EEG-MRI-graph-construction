clc;
close all;

load('correlation/fmri/sub-xp204/2dNF_run-01.mat')
load('locations.mat')
threshold = 0.75;

A = (rho - eye(63)) >= threshold;
G = graph(A,labels);

figure()
plot(G,'XData',loc(:,1),'YData',loc(:,2),'ZData',loc(:,3))
% 
% load(".\correlation\sub-xp101\eegfmriNF.mat");
% eeg_node_locations = tdfread('eeg-node-positions-3d.tsv');
% positions = zeros(63,3);
% 
% ecg = find(labels == "ECG");
% labels(ecg) = [];
% 
% for i = 1:size(labels,2)
%     for j = 1:size(eeg_node_locations.label)
%         label = strtrim(convertCharsToStrings(eeg_node_locations.label(j,:)));
%         
%         if label == labels(i)
%            positions(i,:) = [eeg_node_locations.x(j),eeg_node_locations.y(j),eeg_node_locations.z(j)];
%            break;
%         end
%     end
%     
%     if(positions(i,:) == [0,0,0])
%         labels(i)
%     end
% end
% 
% A = (rho - eye(63)) >= 0.7;
% G1 = graph(A,labels);
% 
% figure()
% 
% plot(G1,'XData',positions(:,1),'YData',positions(:,2),'ZData',positions(:,3))

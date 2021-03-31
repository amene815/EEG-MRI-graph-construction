clc;
clear all;

load(".\correlation\sub-xp222\MIpre.mat");
eeg_node_locations = tdfread('eeg-node-positions-2d.tsv');
positions = zeros(64,2);


for i = 1:size(labels,2)
    for j = 1:size(eeg_node_locations.label)
        label = strtrim(convertCharsToStrings(eeg_node_locations.label(j,:)));
        
        if label == labels(i)
           positions(i,:) = [eeg_node_locations.x(j),eeg_node_locations.y(j)];%,eeg_node_locations.z(j)];
           break;
        end
    end
    
    if(positions(i,:) == [0,0])
        labels(i)
    end
end

A = (rho - eye(64)) >= 0.7;
G = graph(A,labels);

plot(G,'XData',positions(:,1),'YData',positions(:,2))%,'ZData',positions(:,3))

% pr = centrality(G,'pagerank','FollowProbability',0.85);
% labels = labels';
% [pr_sorted, pr_order] = sort(pr,"descend");
% 
% labels_sorted = labels(pr_order,:);
% 
% labeled_pr = [labels_sorted, pr_sorted]

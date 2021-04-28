clc;
close all;

img = niftiread('data/xp1/sub-xp101/func/sub-xp101_task-eegfmriNF_bold.nii.gz');
figure()
image(img(:,:,16, 30))

load('correlation/fmri/sub-xp101/eegfmriNF.mat')
load('locations.mat')

threshold = 0.75;

A = (rho - eye(63)) >= threshold;
G = graph(A,labels);

figure()
plot(G,'XData',loc(:,1),'YData',loc(:,2),'ZData',loc(:,3))

load(".\correlation\sub-xp101\eegfmriNF.mat");
eeg_node_locations = tdfread('eeg-node-positions-3d.tsv');
positions = zeros(63,3);


for i = 1:size(labels,2)
    for j = 1:size(eeg_node_locations.label)
        label = strtrim(convertCharsToStrings(eeg_node_locations.label(j,:)));
        
        if label == labels(i)
           positions(i,:) = [eeg_node_locations.x(j),eeg_node_locations.y(j),eeg_node_locations.z(j)];
           break;
        end
    end
    
    if(positions(i,:) == [0,0,0])
        labels(i)
    end
end

A = (rho - eye(64)) >= 0.7;
G = graph(A,labels);

figure()

plot(G,'XData',positions(:,1),'YData',positions(:,2),'ZData',positions(:,3))

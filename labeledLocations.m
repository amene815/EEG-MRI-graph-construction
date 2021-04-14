load(".\correlation\sub-xp222\MIpre.mat");
eeg_node_locations = tdfread('eeg-node-positions-3d.tsv');

loc = [];

labels = [labels(1:31),labels(33:64)]';

for i = 1:size(labels,1)
    for j = 1:size(eeg_node_locations.x)
        if strtrim(convertCharsToStrings(eeg_node_locations.label(j,:))) == labels(i)
            loc(i,:) = [eeg_node_locations.x(j),eeg_node_locations.y(j),eeg_node_locations.z(j)];
        end
    end
end

save("locations.mat","labels","loc");

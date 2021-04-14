% List of open inputs

a = niftiread("data\xp1\sub-xp101\func\sub-xp101_task-eegfmriNF_bold.nii\sub-xp101_task-eegfmriNF_bold.nii");

eeg_node_locations = tdfread('eeg-node-positions-3d.tsv');


r = .2;
x_space = linspace(-1,1,size(a,1));
y_space = linspace(-1,1,size(a,2));
z_space = linspace(-1,1,size(a,3));

load("locations.mat");

% Create dot product template
for i = 1:size(loc,1)

    template = zeros(size(a,1:3),size(loc();

    center = loc(i,:);
    for x = 1:size(a,1)
        for y = 1:size(a,2)
            for z = 1:size(a,3)

                dist = sqrt((center(1)-x_space(x))^2 + (center(2)-y_space(y))^2 + (center(3)-z_space(z))^2);
                if dist < r
                   template(x,y,z) = 1; 
                end
            end
        end
    end
    
    %Use template for time series information
end

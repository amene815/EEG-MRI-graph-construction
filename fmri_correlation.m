clc;
clear all;
close all;

%These are the hyperparams for creating the adajency matrix
radius = .2;
threshold = .75;


% Creating graphs with given hyper-params

runs = ["eegfmriNF", "eegNF", "fmriNF", "motorloc", "MIpost", "MIpre"];
for sub = 1:10
    for r = runs

        path = sprintf('data/xp1/sub-xp1%02d/func/sub-xp1%02d_task-%s_bold.nii.gz', sub, sub, r);
        if ~isfile(path) || isfile(sprintf('correlation/fmri/sub-xp1%02d/%s.mat',sub, r))
            continue
        end


        a = niftiread(path);
        eeg_node_locations = tdfread('eeg-node-positions-3d.tsv');

        x_space = linspace(-1,1,size(a,1));
        y_space = linspace(-1,1,size(a,2));
        z_space = linspace(-1,1,size(a,3));

        load("locations.mat");
        
        nodes = zeros(size(loc,1),size(a,4));

        % Create dot product template
        for i = 1:size(loc,1)

            template = int16(zeros(size(a,1:3)));
            template_size = 0;

            center = loc(i,:);
            for x = 1:size(a,1)
                for y = 1:size(a,2)
                    for z = 1:size(a,3)

                        dist = sqrt((center(1)-x_space(x))^2 + (center(2)-y_space(y))^2 + (center(3)-z_space(z))^2);
                        if dist < radius
                           template(x,y,z) = 1; 
                           template_size = template_size + 1;
                        end
                    end
                end
            end

        %     Do we want to normalize the values in a? I found max value for t = 1
        %     to be 1799, but in t=2 max = 1894

            for j = 1:size(a,4)
                nodes(i,j) = sum(sum(sum(template.*a(:,:,:,j))))/template_size;  
            end
        end

        rho = corrcoef(nodes');
        mkdir(sprintf('correlation/fmri/sub-xp1%02d',sub));
        save(sprintf('correlation/fmri/sub-xp1%02d/%s.mat',sub, r), 'rho', 'labels');

    end
end

runs = ["1dNF_run-01","1dNF_run-02","1dNF_run-03","1dNF_run-04","MIpost","MIpre","2dNF_run-01","2dNF_run-02","2dNF_run-03"];
for sub = 1:22
    for r = runs

        path = sprintf('data/xp2/sub-xp2%02d/func/sub-xp2%02d_task-%s_bold.nii.gz', sub, sub, r);
        if ~isfile(path) || isfile(sprintf('correlation/fmri/sub-xp2%02d/%s.mat',sub, r))
            continue
        end

        a = niftiread(path);
        eeg_node_locations = tdfread('eeg-node-positions-3d.tsv');

        x_space = linspace(-1,1,size(a,1));
        y_space = linspace(-1,1,size(a,2));
        z_space = linspace(-1,1,size(a,3));

        load("locations.mat");
        
        nodes = zeros(size(loc,1),size(a,4));

        % Create dot product template
        for i = 1:size(loc,1)

            template = int16(zeros(size(a,1:3)));
            template_size = 0;

            center = loc(i,:);
            for x = 1:size(a,1)
                for y = 1:size(a,2)
                    for z = 1:size(a,3)

                        dist = sqrt((center(1)-x_space(x))^2 + (center(2)-y_space(y))^2 + (center(3)-z_space(z))^2);
                        if dist < radius
                           template(x,y,z) = 1; 
                           template_size = template_size + 1;
                        end
                    end
                end
            end

        %     Do we want to normalize the values in a? I found max value for t = 1
        %     to be 1799, but in t=2 max = 1894

            for j = 1:size(a,4)
                nodes(i,j) = sum(sum(sum(template.*a(:,:,:,j))))/template_size;  
            end
        end

        rho = corrcoef(nodes');
        mkdir(sprintf('correlation/fmri/sub-xp2%02d',sub));
        save(sprintf('correlation/fmri/sub-xp2%02d/%s.mat',sub, r), 'rho', 'labels');

    end
end


% A = (rho - eye(63)) >= threshold;
% G = graph(A,labels);
% 
% plot(G,'XData',loc(:,1),'YData',loc(:,2),'ZData',loc(:,3))

subs = [10, 22];

runs = ["eegfmriNF", "eegNF", "fmriNF", "motorloc", "MIpost", "MIpre"];
for sub = 1:10
    for r = runs
    spm('defaults', 'eeg');

    S = [];
    path = sprintf('data/xp1/derivatives/sub-xp1%02d/eeg_pp/sub-xp1%02d_task-%s_eeg_pp.vhdr', sub, sub, r);
    if ~isfile(path) %|| isfile(sprintf('correlation/sub-xp1%02d/%s.m',sub, r))
        continue
    end
    S.dataset = path;
    S.outfile = 'tmp';
    S.channels = 'all';
    S.timewin = [];
    S.blocksize = 3276800;
    S.checkboundary = 1;
    S.eventpadding = 0;
    S.saveorigheader = 0;
    S.conditionlabels = {'Undefined'};
    S.inputformat = [];
    S.mode = 'continuous';
    D = spm_eeg_convert(S);
    
    load('tmp.mat')
    rho = corrcoef(D.data(:,:)');
    mkdir(sprintf('correlation/sub-xp1%02d',sub))
    save(sprintf('correlation/sub-xp1%02d/%s.m',sub, r), 'rho');
    end
end

runs = ["1dNF_run-01","1dNF_run-02","1dNF_run-03","MIpost","MIpre","2dNF_run-01","2dNF_run-02","2dNF_run-03","NF4"];
for sub = 1:22
    for r = runs
    spm('defaults', 'eeg');

    S = [];
    path = sprintf('data/xp2/derivatives/sub-xp2%02d/eeg_pp/d_sub-xp2%02d_task-%s_eeg_pp.vhdr', sub, sub, r);
    if ~isfile(path) %|| isfile(sprintf('correlation/sub-xp2%02d/%s.m',sub, r))
        continue
    end
    S.dataset = path;
    S.outfile = 'tmp';
    S.channels = 'all';
    S.timewin = [];
    S.blocksize = 3276800;
    S.checkboundary = 1;
    S.eventpadding = 0;
    S.saveorigheader = 0;
    S.conditionlabels = {'Undefined'};
    S.inputformat = [];
    S.mode = 'continuous';
    D = spm_eeg_convert(S);
    
    load('tmp.mat')
    rho = corrcoef(D.data(:,:)');
    labels = arrayfun(@(x) string(x.label), D.channels);
    mkdir(sprintf('correlation/sub-xp2%02d',sub))
    save(sprintf('correlation/sub-xp2%02d/%s.m',sub, r), 'rho', 'labels');
    end
end
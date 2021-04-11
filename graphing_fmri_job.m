%-----------------------------------------------------------------------
% Job saved on 10-Apr-2021 22:17:51 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7771)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.spm.spatial.realign.estwrite.data = {{'C:\Users\Austin Engle\Desktop\Grad\Semester 2\Graph Mining\Project\EEG-MRI-graph-construction\data\xp1\sub-xp101\func\sub-xp101_task-eegfmriNF_bold.nii\sub-xp101_task-eegfmriNF_bold.nii,1'}};
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.quality = 0.9;
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.sep = 4;
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.fwhm = 5;
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.rtm = 1;
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.interp = 2;
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.wrap = [0 0 0];
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.weight = '';
matlabbatch{1}.spm.spatial.realign.estwrite.roptions.which = [2 1];
matlabbatch{1}.spm.spatial.realign.estwrite.roptions.interp = 4;
matlabbatch{1}.spm.spatial.realign.estwrite.roptions.wrap = [0 0 0];
matlabbatch{1}.spm.spatial.realign.estwrite.roptions.mask = 1;
matlabbatch{1}.spm.spatial.realign.estwrite.roptions.prefix = 'r';
matlabbatch{2}.spm.temporal.st.scans = {{'C:\Users\Austin Engle\Desktop\Grad\Semester 2\Graph Mining\Project\EEG-MRI-graph-construction\data\xp1\sub-xp101\func\sub-xp101_task-eegfmriNF_bold.nii\rsub-xp101_task-eegfmriNF_bold.nii,1'}};
matlabbatch{2}.spm.temporal.st.nslices = 32;
matlabbatch{2}.spm.temporal.st.tr = 2;
matlabbatch{2}.spm.temporal.st.ta = 1.9375;
matlabbatch{2}.spm.temporal.st.so = [1 3 5 7 9 11 13 15 17 19 21 23 25 27 29 31 2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32];
matlabbatch{2}.spm.temporal.st.refslice = 1;
matlabbatch{2}.spm.temporal.st.prefix = 'a';
matlabbatch{3}.spm.spatial.coreg.estwrite.ref = {'C:\Users\Austin Engle\Desktop\Grad\Semester 2\Graph Mining\Project\EEG-MRI-graph-construction\data\xp1\sub-xp101\func\sub-xp101_task-eegfmriNF_bold.nii\meansub-xp101_task-eegfmriNF_bold.nii,1'};
matlabbatch{3}.spm.spatial.coreg.estwrite.source = {'C:\Users\Austin Engle\Desktop\Grad\Semester 2\Graph Mining\Project\EEG-MRI-graph-construction\data\xp1\sub-xp101\anat\sub-xp101_T1w_defaced.nii,1'};
matlabbatch{3}.spm.spatial.coreg.estwrite.other = {''};
matlabbatch{3}.spm.spatial.coreg.estwrite.eoptions.cost_fun = 'nmi';
matlabbatch{3}.spm.spatial.coreg.estwrite.eoptions.sep = [4 2];
matlabbatch{3}.spm.spatial.coreg.estwrite.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
matlabbatch{3}.spm.spatial.coreg.estwrite.eoptions.fwhm = [7 7];
matlabbatch{3}.spm.spatial.coreg.estwrite.roptions.interp = 4;
matlabbatch{3}.spm.spatial.coreg.estwrite.roptions.wrap = [0 0 0];
matlabbatch{3}.spm.spatial.coreg.estwrite.roptions.mask = 0;
matlabbatch{3}.spm.spatial.coreg.estwrite.roptions.prefix = 'r';
matlabbatch{4}.spm.spatial.preproc.channel.vols = {'C:\Users\Austin Engle\Desktop\Grad\Semester 2\Graph Mining\Project\EEG-MRI-graph-construction\data\xp1\sub-xp101\func\sub-xp101_task-eegfmriNF_bold.nii\rsub-xp101_task-eegfmriNF_bold.nii,1'};
matlabbatch{4}.spm.spatial.preproc.channel.biasreg = 0.001;
matlabbatch{4}.spm.spatial.preproc.channel.biasfwhm = 60;
matlabbatch{4}.spm.spatial.preproc.channel.write = [0 1];
matlabbatch{4}.spm.spatial.preproc.tissue(1).tpm = {'C:\Users\Austin Engle\Desktop\Grad\Semester 2\Graph Mining\Project\EEG-MRI-graph-construction\data\spm12\tpm\TPM.nii,1'};
matlabbatch{4}.spm.spatial.preproc.tissue(1).ngaus = 1;
matlabbatch{4}.spm.spatial.preproc.tissue(1).native = [1 0];
matlabbatch{4}.spm.spatial.preproc.tissue(1).warped = [0 0];
matlabbatch{4}.spm.spatial.preproc.tissue(2).tpm = {'C:\Users\Austin Engle\Desktop\Grad\Semester 2\Graph Mining\Project\EEG-MRI-graph-construction\data\spm12\tpm\TPM.nii,2'};
matlabbatch{4}.spm.spatial.preproc.tissue(2).ngaus = 1;
matlabbatch{4}.spm.spatial.preproc.tissue(2).native = [1 0];
matlabbatch{4}.spm.spatial.preproc.tissue(2).warped = [0 0];
matlabbatch{4}.spm.spatial.preproc.tissue(3).tpm = {'C:\Users\Austin Engle\Desktop\Grad\Semester 2\Graph Mining\Project\EEG-MRI-graph-construction\data\spm12\tpm\TPM.nii,3'};
matlabbatch{4}.spm.spatial.preproc.tissue(3).ngaus = 2;
matlabbatch{4}.spm.spatial.preproc.tissue(3).native = [1 0];
matlabbatch{4}.spm.spatial.preproc.tissue(3).warped = [0 0];
matlabbatch{4}.spm.spatial.preproc.tissue(4).tpm = {'C:\Users\Austin Engle\Desktop\Grad\Semester 2\Graph Mining\Project\EEG-MRI-graph-construction\data\spm12\tpm\TPM.nii,4'};
matlabbatch{4}.spm.spatial.preproc.tissue(4).ngaus = 3;
matlabbatch{4}.spm.spatial.preproc.tissue(4).native = [1 0];
matlabbatch{4}.spm.spatial.preproc.tissue(4).warped = [0 0];
matlabbatch{4}.spm.spatial.preproc.tissue(5).tpm = {'C:\Users\Austin Engle\Desktop\Grad\Semester 2\Graph Mining\Project\EEG-MRI-graph-construction\data\spm12\tpm\TPM.nii,5'};
matlabbatch{4}.spm.spatial.preproc.tissue(5).ngaus = 4;
matlabbatch{4}.spm.spatial.preproc.tissue(5).native = [1 0];
matlabbatch{4}.spm.spatial.preproc.tissue(5).warped = [0 0];
matlabbatch{4}.spm.spatial.preproc.tissue(6).tpm = {'C:\Users\Austin Engle\Desktop\Grad\Semester 2\Graph Mining\Project\EEG-MRI-graph-construction\data\spm12\tpm\TPM.nii,6'};
matlabbatch{4}.spm.spatial.preproc.tissue(6).ngaus = 2;
matlabbatch{4}.spm.spatial.preproc.tissue(6).native = [0 0];
matlabbatch{4}.spm.spatial.preproc.tissue(6).warped = [0 0];
matlabbatch{4}.spm.spatial.preproc.warp.mrf = 1;
matlabbatch{4}.spm.spatial.preproc.warp.cleanup = 1;
matlabbatch{4}.spm.spatial.preproc.warp.reg = [0 0.001 0.5 0.05 0.2];
matlabbatch{4}.spm.spatial.preproc.warp.affreg = 'mni';
matlabbatch{4}.spm.spatial.preproc.warp.fwhm = 0;
matlabbatch{4}.spm.spatial.preproc.warp.samp = 3;
matlabbatch{4}.spm.spatial.preproc.warp.write = [0 1];
matlabbatch{4}.spm.spatial.preproc.warp.vox = NaN;
matlabbatch{4}.spm.spatial.preproc.warp.bb = [NaN NaN NaN
                                              NaN NaN NaN];
matlabbatch{5}.spm.spatial.normalise.write.subj.def = {'C:\Users\Austin Engle\Desktop\Grad\Semester 2\Graph Mining\Project\EEG-MRI-graph-construction\data\xp1\sub-xp101\func\sub-xp101_task-eegfmriNF_bold.nii\y_rsub-xp101_task-eegfmriNF_bold.nii'};
matlabbatch{5}.spm.spatial.normalise.write.subj.resample = {'C:\Users\Austin Engle\Desktop\Grad\Semester 2\Graph Mining\Project\EEG-MRI-graph-construction\data\xp1\sub-xp101\func\sub-xp101_task-eegfmriNF_bold.nii\arsub-xp101_task-eegfmriNF_bold.nii,1'};
matlabbatch{5}.spm.spatial.normalise.write.woptions.bb = [-78 -112 -70
                                                          78 76 85];
matlabbatch{5}.spm.spatial.normalise.write.woptions.vox = [3 3 3];
matlabbatch{5}.spm.spatial.normalise.write.woptions.interp = 4;
matlabbatch{5}.spm.spatial.normalise.write.woptions.prefix = 'w';
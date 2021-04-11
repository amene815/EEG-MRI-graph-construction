% List of open inputs
nrun = 1; % enter the number of runs here
jobfile = {'C:\Users\Austin Engle\Desktop\Grad\Semester 2\Graph Mining\Project\EEG-MRI-graph-construction\graphing_fmri_job.m'};
jobs = repmat(jobfile, 1, nrun);
inputs = cell(0, nrun);
for crun = 1:nrun
end
spm('defaults', 'FMRI');
spm_jobman('run', jobs, inputs{:});

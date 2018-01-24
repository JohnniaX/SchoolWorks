function [rate, sd] = count_rate(degree, cell, trial)
    spiketrain = generate_noisy_data_cockroach(degree, cell, trial);
%     figure;
%     imagesc(spiketrain)
%     xlabel('Time t');
%     ylabel('Trails');
%     set(gca, 'YTick', 1:trial);
    sums = zeros(1, trial);
    for k = 1:trial
        sums(k) = sum(spiketrain(k, :));
    end
    rate = mean(sums) / 300;
    sd = std(sums);
%     fprintf('For direction of %d, cell %d within %d trails has an average firing rate of %d and a standard-deviation of %d. \n', degree, cell, trial, rate, std(sums));
end
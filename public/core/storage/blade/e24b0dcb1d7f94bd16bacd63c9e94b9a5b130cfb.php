
<?php $__env->startSection('content'); ?>
    <h1>
        <i class="<?php echo e($_style['icon_info_circle']); ?>"></i><?php echo e(ManagerTheme::getLexicon('view_sysinfo')); ?>

    </h1>

    <!-- server -->
    <div class="tab-page">
        <div class="container container-body">
            <p><b>Server</b></p>
            <div class="row">
                <div class="table-responsive">
                    <table class="table data table-sm nowrap">
                        <tbody>
                        <?php $__currentLoopData = $serverArr; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <td width="1%"><?php echo e(empty($value['is_lexicon']) ? $key : ManagerTheme::getLexicon($key)); ?></td>
                                <td>&nbsp;</td>
                                <td>
                                    <?php if(isset($value['render'])): ?>
                                        <?php echo $__env->make($value['render'], ['data' => $value['data']], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    <?php else: ?>
                                        <b><?php echo e($value['data']); ?></b>
                                    <?php endif; ?>
                                </td>
                            </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <p>&nbsp;</p>

    <!-- database -->
    <?php
        $totaloverhead = 0;
        $total = 0;
    ?>
    <div class="tab-page">
        <div class="container container-body">
            <p><b><?php echo e(ManagerTheme::getLexicon('database_tables')); ?></b></p>
            <div class="row">
                <div class="table-responsive">
                    <table class="table data nowrap">
                        <thead>
                        <tr>
                            <td><?php echo e(ManagerTheme::getLexicon('database_table_tablename')); ?></td>
                            <td width="1%"></td>
                            <td class="text-xs-center"><?php echo e(ManagerTheme::getLexicon('database_table_records')); ?></td>
                            <td class="text-xs-center"><?php echo e(ManagerTheme::getLexicon('database_table_datasize')); ?></td>
                            <td class="text-xs-center"><?php echo e(ManagerTheme::getLexicon('database_table_overhead')); ?></td>
                            <td class="text-xs-center"><?php echo e(ManagerTheme::getLexicon('database_table_effectivesize')); ?></td>
                            <td class="text-xs-center"><?php echo e(ManagerTheme::getLexicon('database_table_indexsize')); ?></td>
                            <td class="text-xs-center"><?php echo e(ManagerTheme::getLexicon('database_table_totalsize')); ?></td>
                        </tr>
                        </thead>
                        <tbody>
                        <?php $i = 0; ?>
                        <?php $__currentLoopData = $tables; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $table): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <td class="text-primary"><b><?php echo e($table['Name']); ?></b></td>
                                <td class="text-xs-center">
                                    <?php if(!empty($table['Comment'])): ?>
                                        <i class="<?php echo e($_style['icon_question_circle']); ?>" data-tooltip="<?php echo e($table['Comment']); ?>"></i>
                                    <?php endif; ?>
                                </td>
                                <td class="text-xs-right"><?php echo e($table['Rows']); ?></td>

                                <?php if(evolutionCMS()->hasPermission('settings') && in_array($table['Name'], $truncateable)): ?>
                                    <td class="text-xs-right">
                                        <a class="text-danger" href="index.php?a=54&mode=$action&u=<?php echo e($table['Name']); ?>" title="<?php echo e(ManagerTheme::getLexicon('truncate_table')); ?>">
                                            <?php echo e(nicesize($table['Data_length'] + $table['Data_free'])); ?>

                                        </a>
                                    </td>
                                <?php else: ?>
                                    <td class="text-xs-right">
                                        <?php echo e(nicesize($table['Data_length'] + $table['Data_free'])); ?>

                                    </td>
                                <?php endif; ?>

                                <?php if(evolutionCMS()->hasPermission('settings')): ?>
                                    <td class="text-xs-right">
                                        <?php if($table['Data_free'] > 0): ?>
                                            <a class="text-danger" href="index.php?a=54&mode=$action&t=<?php echo e($table['Name']); ?>" title="<?php echo e(ManagerTheme::getLexicon('optimize_table')); ?>" >
                                                <span> <?php echo e(nicesize($table['Data_free'])); ?></span>
                                            </a>
                                        <?php else: ?>
                                            -
                                        <?php endif; ?>
                                    </td>
                                <?php else: ?>
                                    <td class="text-xs-right">
                                        <?php if($table['Data_free'] > 0): ?>
                                            <?php echo e(nicesize($table['Data_free'])); ?>

                                        <?php else: ?>
                                            -
                                        <?php endif; ?>
                                    </td>
                                <?php endif; ?>

                                <td class="text-xs-right">
                                    <?php echo e(nicesize($table['Data_length'] - $table['Data_free'])); ?>

                                </td>
                                <td class="text-xs-right">
                                    <?php echo e(nicesize($table['Index_length'])); ?>

                                </td>
                                <td class="text-xs-right">
                                    <?php echo e(nicesize($table['Index_length'] + $table['Data_length'] + $table['Data_free'])); ?>

                                </td>
                            </tr>
                            <?php
                                $total = $total + $table['Index_length'] + $table['Data_length'];
                                $totaloverhead = $totaloverhead + $table['Data_free'];
                            ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <tr class="unstyled">
                            <td class="text-xs-right"><?php echo e(ManagerTheme::getLexicon('database_table_totals')); ?></td>
                            <td colspan="3">&nbsp;</td>
                            <td class="text-xs-right">
                                <?php if($totaloverhead > 0): ?>
                                    <b class="text-danger"><?php echo e(nicesize($totaloverhead)); ?></b><br />(<?php echo e(number_format($totaloverhead)); ?> B)
                                <?php else: ?>
                                    -
                                <?php endif; ?>
                            </td>
                            <td colspan="2">&nbsp;</td>
                            <td class="text-xs-right"><b><?php echo e(nicesize($total)); ?></b><br />(<?php echo e(number_format($total)); ?> B)</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <?php if($totaloverhead > 0): ?>
                <br>
                <p class="alert alert-danger"><?php echo e(ManagerTheme::getLexicon('database_overhead')); ?></p>
            <?php endif; ?>
        </div>
    </div>
<?php $__env->startPush('scripts.bot'); ?>
<?php $__env->stopPush(); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('manager::template.page', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/public/manager//views//page/sysinfo.blade.php ENDPATH**/ ?>
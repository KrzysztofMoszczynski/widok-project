<textarea class="form-control <?php echo e($class ?? ''); ?>" name="<?php echo e($name); ?>" id="<?php echo e($id ?? $name); ?>" rows="<?php echo e($rows ?? '3'); ?>"
    <?php if(!empty($placeholder)): ?> placeholder="<?php echo e($placeholder); ?>" <?php endif; ?>
<?php echo $attributes ?? ''; ?>

<?php if(!empty($readonly)): ?> readonly <?php endif; ?>
><?php echo e($value); ?></textarea>
<?php /**PATH /var/www/public/manager//views//form/textareaElement.blade.php ENDPATH**/ ?>
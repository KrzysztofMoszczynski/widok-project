
<?php $__env->startSection('content'); ?>
    <?php $__env->startPush('scripts.top'); ?>
        <script>
          var displayStyle = '<?php echo e($displayStyle); ?>';
          var lang_chg = '<?php echo e(ManagerTheme::getLexicon('confirm_setting_language_change')); ?>';
          var actions = {
            save: function() {
              documentDirty = false;
              document.settings.submit();
            },
            cancel: function() {
              documentDirty = false;
              document.location.href = 'index.php?a=2';
            }
          };
        </script>
        <script src="media/script/mutate_settings.js"></script>
    <?php $__env->stopPush(); ?>
    <form name="settings" method="post" action="index.php">
        <input type="hidden" name="a" value="30">
        <!-- this field is used to check site settings have been entered/ updated after install or upgrade -->
        <input type="hidden" name="site_id" value="<?php echo e(get_by_key($modx->config, 'site_id')); ?>" />
        <input type="hidden" name="settings_version" value="<?php echo e($modx->getVersionData('version')); ?>" />
        <h1>
            <i class="<?php echo e($_style['icon_sliders']); ?>"></i><?php echo e(ManagerTheme::getLexicon('settings_title')); ?>

        </h1>

        <?php echo $__env->make('manager::partials.actionButtons', $actionButtons, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

        <?php if(!get_by_key($modx->config, 'settings_version') || get_by_key($modx->config, 'settings_version') !== $modx->getVersionData('version')): ?>
            <div class="container">
                <p class="alert alert-warning"><?php echo ManagerTheme::getLexicon('settings_after_install'); ?></p>
            </div>
        <?php endif; ?>
        <div class="tab-pane" id="settingsPane">
            <script>
              tpSettings = new WebFXTabPane(document.getElementById('settingsPane'), <?php echo e(get_by_key($modx->config, 'remember_last_tab') ? 1 : 0); ?>);
            </script>
            <?php echo $__env->make('manager::page.system_settings.general', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php echo $__env->make('manager::page.system_settings.friendly_urls', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php echo $__env->make('manager::page.system_settings.interface', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php echo $__env->make('manager::page.system_settings.security', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php echo $__env->make('manager::page.system_settings.file_manager', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php echo $__env->make('manager::page.system_settings.file_browser', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php echo $__env->make('manager::page.system_settings.mail_templates', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
    </form>
    <?php $__env->startPush('scripts.bot'); ?>
        <script>
          (function($) {
            $('input:radio').change(function() {
              documentDirty = true;
            });
            $('#furlRowOn').change(function() {
              $('.furlRow').fadeIn();
            });
            $('#furlRowOff').change(function() {
              $('.furlRow').fadeOut();
            });
            $('#udPermsOn').change(function() {
              $('.udPerms').slideDown();
            });
            $('#udPermsOff').change(function() {
              $('.udPerms').slideUp();
            });
            $('#editorRowOn').change(function() {
              $('.editorRow').slideDown();
            });
            $('#editorRowOff').change(function() {
              $('.editorRow').slideUp();
            });
            $('#rbRowOn').change(function() {
              $('.rbRow').fadeIn();
            });
            $('#rbRowOff').change(function() {
              $('.rbRow').fadeOut();
            });
            $('#useSmtp').change(function() {
              $('.smtpRow').fadeIn();
            });
            $('#useMail').change(function() {
              $('.smtpRow').fadeOut();
            });
            $('#captchaOn').change(function() {
              $('.captchaRow').fadeIn();
            });
            $('#captchaOff').change(function() {
              $('.captchaRow').fadeOut();
            });
          })(jQuery);
        </script>

        <script>
          var lastImageCtrl;
          var lastFileCtrl;

          function OpenServerBrowser(url, width, height)
          {
            var iLeft = (screen.width - width) / 2;
            var iTop = (screen.height - height) / 2;

            var sOptions = 'toolbar=no,status=no,resizable=yes,dependent=yes';
            sOptions += ',width=' + width;
            sOptions += ',height=' + height;
            sOptions += ',left=' + iLeft;
            sOptions += ',top=' + iTop;

            var oWindow = window.open(url, 'FCKBrowseWindow', sOptions);
          }

          function BrowseServer(ctrl)
          {
            lastImageCtrl = ctrl;
            var w = screen.width * 0.7;
            var h = screen.height * 0.7;
            OpenServerBrowser('<?php echo e(MODX_MANAGER_URL); ?>media/browser/<?php echo e($modx->getConfig('which_browser')); ?>/browser.php?Type=images', w, h);
          }

          function BrowseFileServer(ctrl)
          {
            lastFileCtrl = ctrl;
            var w = screen.width * 0.7;
            var h = screen.height * 0.7;
            OpenServerBrowser('<?php echo e(MODX_MANAGER_URL); ?>media/browser/<?php echo e($modx->getConfig('which_browser')); ?>/browser.php?Type=files', w, h);
          }

          function SetUrlChange(el)
          {
            if ('createEvent' in document) {
              var evt = document.createEvent('HTMLEvents');
              evt.initEvent('change', false, true);
              el.dispatchEvent(evt);
            } else {
              el.fireEvent('onchange');
            }
          }

          function SetUrl(url, width, height, alt)
          {
            if (lastFileCtrl) {
              var c = document.getElementById(lastFileCtrl);
              if (c && c.value != url) {
                c.value = url;
                SetUrlChange(c);
              }
              lastFileCtrl = '';
            } else if (lastImageCtrl) {
              var c = document.getElementById(lastImageCtrl);
              if (c && c.value != url) {
                c.value = url;
                SetUrlChange(c);
              }
              lastImageCtrl = '';
            } else {
              return;
            }
          }

          function setChangesChunkProcessor(item)
          {
            item = item || document.querySelector('[name="chunk_processor"]:checked');
            document.querySelectorAll('[name="enable_at_syntax"], [name="enable_filter"]').forEach(function(el) {
              if (item.checked && item.value === 'DLTemplate') {
                el.checked = !!el.value;
                el.disabled = true;
              } else {
                el.disabled = false;
              }
            });
          }

          setChangesChunkProcessor();

          document.querySelectorAll('[name="chunk_processor"]').forEach(function(item) {
            item.addEventListener('change', function() {
              setChangesChunkProcessor(item);
            }, false);
          });
        </script>
        <?php if(is_numeric(get_by_key($_GET, 'tab'))): ?>
            <script>tpSettings.setSelectedIndex(<?php echo e($_GET['tab']); ?>);</script>
        <?php endif; ?>
    <?php $__env->stopPush(); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('manager::template.page', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/public/manager//views//page/system_settings.blade.php ENDPATH**/ ?>
/**

 @Name��layui.form �����
 @Author������
 @License��MIT
    
 */
 
layui.define('layer', function(exports){
  "use strict";
  
  var $ = layui.$
  ,layer = layui.layer
  ,hint = layui.hint()
  ,device = layui.device()
  
  ,MOD_NAME = 'form', ELEM = '.layui-form', THIS = 'layui-this'
  ,SHOW = 'layui-show', HIDE = 'layui-hide', DISABLED = 'layui-disabled'
  
  ,Form = function(){
    this.config = {
      verify: {
        required: [
          /[\S]+/
          ,'�������Ϊ��'
        ]
        ,phone: [
          /^1\d{10}$/
          ,'��������ȷ���ֻ���'
        ]
        ,email: [
          /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/
          ,'�����ʽ����ȷ'
        ]
        ,url: [
          /(^#)|(^http(s*):\/\/[^\s]+\.[^\s]+)/
          ,'���Ӹ�ʽ����ȷ'
        ]
        ,number: function(value){
          if(!value || isNaN(value)) return 'ֻ����д����'
        }
        ,date: [
          /^(\d{4})[-\/](\d{1}|0\d{1}|1[0-2])([-\/](\d{1}|0\d{1}|[1-2][0-9]|3[0-1]))*$/
          ,'���ڸ�ʽ����ȷ'
        ]
        ,identity: [
          /(^\d{15}$)|(^\d{17}(x|X|\d)$)/
          ,'��������ȷ�����֤��'
        ]
      }
    };
  };
  
  //ȫ������
  Form.prototype.set = function(options){
    var that = this;
    $.extend(true, that.config, options);
    return that;
  };
  
  //��֤�����趨
  Form.prototype.verify = function(settings){
    var that = this;
    $.extend(true, that.config.verify, settings);
    return that;
  };
  
  //���¼�����
  Form.prototype.on = function(events, callback){
    return layui.onevent.call(this, MOD_NAME, events, callback);
  };
  
  //��ʼ��ֵ
  Form.prototype.val = function(filter, object){
    var that = this
    ,formElem = $(ELEM + '[lay-filter="' + filter +'"]');
    formElem.each(function(index, item){
      var itemFrom = $(this);
      layui.each(object, function(key, value){
        var itemElem = itemFrom.find('[name="'+ key +'"]')
        ,type;
        
        //�����Ӧ�ı������ڣ���ִ��
        if(!itemElem[0]) return;
        type = itemElem[0].type;
        
        //���Ϊ��ѡ��
        if(type === 'checkbox'){
          itemElem[0].checked = value;
        } else if(type === 'radio') { //���Ϊ��ѡ��
          itemElem.each(function(){
            if(this.value === value ){
              this.checked = true
            }     
          });
        } else { //�������͵ı�
          itemElem.val(value);
        }
      });
    });
    form.render(null, filter);
  };
  
  //���ؼ���Ⱦ
  Form.prototype.render = function(type, filter){
    var that = this
    ,elemForm = $(ELEM + function(){
      return filter ? ('[lay-filter="' + filter +'"]') : '';
    }())
    ,items = {
      
      //����ѡ���
      select: function(){
        var TIPS = '��ѡ��', CLASS = 'layui-form-select', TITLE = 'layui-select-title'
        ,NONE = 'layui-select-none', initValue = '', thatInput
        ,selects = elemForm.find('select')
        
        //���� select
        ,hide = function(e, clear){
          if(!$(e.target).parent().hasClass(TITLE) || clear){
            $('.'+CLASS).removeClass(CLASS+'ed ' + CLASS+'up');
            thatInput && initValue && thatInput.val(initValue);
          }
          thatInput = null;
        }
        
        //�����¼�
        ,events = function(reElem, disabled, isSearch){
          var select = $(this)
          ,title = reElem.find('.' + TITLE)
          ,input = title.find('input')
          ,dl = reElem.find('dl')
          ,dds = dl.children('dd')
          ,index =  this.selectedIndex //��ǰѡ�е�����
          ,nearElem; //select �����ǰѡ�еĸ���Ԫ�أ����ڸ�����ݼ�����
          
          if(disabled) return;
          
          //չ������
          var showDown = function(){
            var top = reElem.offset().top + reElem.outerHeight() + 5 - $win.scrollTop()
            ,dlHeight = dl.outerHeight();
            
            index = select[0].selectedIndex; //��ȡ���µ� selectedIndex
            reElem.addClass(CLASS+'ed');
            dds.removeClass(HIDE);
            nearElem = null;

            //��ʼѡ����ʽ
            dds.eq(index).addClass(THIS).siblings().removeClass(THIS);

            //���¶�λʶ��
            if(top + dlHeight > $win.height() && top >= dlHeight){
              reElem.addClass(CLASS + 'up');
            }
            
            followScroll();
          }
          
          //��������
          ,hideDown = function(choose){
            reElem.removeClass(CLASS+'ed ' + CLASS+'up');
            input.blur();
            nearElem = null;
            
            if(choose) return;
            
            notOption(input.val(), function(none){
              if(none){
                initValue = dl.find('.'+THIS).html();
                input && input.val(initValue);
              }
            });
          }
          
          //��λ����������
          ,followScroll = function(){  
            var thisDd = dl.children('dd.'+ THIS);
            
            if(!thisDd[0]) return;
            
            var posTop = thisDd.position().top
            ,dlHeight = dl.height()
            ,ddHeight = thisDd.height();
            
            //��ѡ��Ԫ���ڹ��������ɼ��ײ�
            if(posTop > dlHeight){
              dl.scrollTop(posTop + dl.scrollTop() - dlHeight + ddHeight - 5);
            }
            
            //��ѡ�������ڹ��������ɼ�����
            if(posTop < 0){
              dl.scrollTop(posTop + dl.scrollTop() - 5);
            }
          };
          
          //�����������
          title.on('click', function(e){
            reElem.hasClass(CLASS+'ed') ? (
              hideDown()
            ) : (
              hide(e, true), 
              showDown()
            );
            dl.find('.'+NONE).remove();
          }); 
          
          //�����ͷ��ȡ����
          title.find('.layui-edge').on('click', function(){
            input.focus();
          });
          
          //select �� input �����¼�
          input.on('keyup', function(e){ //�����ɿ�
            var keyCode = e.keyCode;
            
            //Tab��չ��
            if(keyCode === 9){
              showDown();
            }
          }).on('keydown', function(e){ //���̰���
            var keyCode = e.keyCode;

            //Tab������
            if(keyCode === 9){
              hideDown();
            }
            
            //��ע dd ��ѡ��״̬
            var setThisDd = function(prevNext, thisElem1){
              var nearDd, cacheNearElem
              e.preventDefault();

              //�õ���ǰ����Ԫ��  
              var thisElem = function(){
                var thisDd = dl.children('dd.'+ THIS);
                
                //���������״̬���Ұ� Down �����ҵ�ǰ���� dd Ԫ����ѡ��Ԫ��֮ǰ��
                //�򽫵�ǰ���� dd Ԫ�ص���һ��Ԫ����Ϊ����ĵ�ǰѡ��Ԫ�أ��Ա�֤�ݹ鲻�ж�
                if(dl.children('dd.'+  HIDE)[0] && prevNext === 'next'){
                  var showDd = dl.children('dd:not(.'+ HIDE +',.'+ DISABLED +')')
                  ,firstIndex = showDd.eq(0).index();
                  if(firstIndex >=0 && firstIndex < thisDd.index() && !showDd.hasClass(THIS)){
                    return showDd.eq(0).prev()[0] ? showDd.eq(0).prev() : dl.children(':last');
                  }
                }

                if(thisElem1 && thisElem1[0]){
                  return thisElem1;
                }
                if(nearElem && nearElem[0]){
                  return nearElem;
                }
       
                return thisDd;
                //return dds.eq(index);
              }();
              
              cacheNearElem = thisElem[prevNext](); //��ǰԪ�صĸ���Ԫ��
              nearDd =  thisElem[prevNext]('dd:not(.'+ HIDE +')'); //��ǰ����Ԫ�ص� dd Ԫ��

              //���������Ԫ�ز����ڣ���ִֹͣ�У������ nearElem
              if(!cacheNearElem[0]) return nearElem = null;
              
              //��¼������Ԫ�أ������Ϊ��һ����ǰԪ��
              nearElem = thisElem[prevNext]();

              //����������� dd �����߸����� dd Ԫ���ǽ���״̬�������ݹ����
              if((!nearDd[0] || nearDd.hasClass(DISABLED)) && nearElem[0]){
                return setThisDd(prevNext, nearElem);
              }
              
              nearDd.addClass(THIS).siblings().removeClass(THIS); //��ע��ʽ
              followScroll(); //��λ������
            };
            
            if(keyCode === 38) setThisDd('prev'); //Up ��
            if(keyCode === 40) setThisDd('next'); //Down ��
            
            //Enter ��
            if(keyCode === 13){ 
              e.preventDefault();
              dl.children('dd.'+THIS).trigger('click');
            }
          });
          
          //���ֵ�Ƿ����� select ��
          var notOption = function(value, callback, origin){
            var num = 0;
            layui.each(dds, function(){
              var othis = $(this)
              ,text = othis.text()
              ,not = text.indexOf(value) === -1;
              if(value === '' || (origin === 'blur') ? value !== text : not) num++;
              origin === 'keyup' && othis[not ? 'addClass' : 'removeClass'](HIDE);
            });
            var none = num === dds.length;
            return callback(none), none;
          };
          
          //����ƥ��
          var search = function(e){
            var value = this.value, keyCode = e.keyCode;
            
            if(keyCode === 9 || keyCode === 13 
              || keyCode === 37 || keyCode === 38 
              || keyCode === 39 || keyCode === 40
            ){
              return false;
            }
            
            notOption(value, function(none){
              if(none){
                dl.find('.'+NONE)[0] || dl.append('<p class="'+ NONE +'">��ƥ����</p>');
              } else {
                dl.find('.'+NONE).remove();
              }
            }, 'keyup');
            
            if(value === ''){
              dl.find('.'+NONE).remove();
            }
            
            followScroll(); //��λ������
          };
          
          if(isSearch){
            input.on('keyup', search).on('blur', function(e){
              var selectedIndex = select[0].selectedIndex;
              thatInput = input; //��ǰ�� select �е� input Ԫ��
              initValue = $(select[0].options[selectedIndex]).html(); //���»�ó�ʼѡ��ֵ
              setTimeout(function(){
                notOption(input.val(), function(none){
                  initValue || input.val(''); //none && !initValue
                }, 'blur');
              }, 200);
            });
          }

          //ѡ��
          dds.on('click', function(){
            var othis = $(this), value = othis.attr('lay-value');
            var filter = select.attr('lay-filter'); //��ȡ������
            
            if(othis.hasClass(DISABLED)) return false;
            
            if(othis.hasClass('layui-select-tips')){
              input.val('');
            } else {
              input.val(othis.text());
              othis.addClass(THIS);
            }

            othis.siblings().removeClass(THIS);
            select.val(value).removeClass('layui-form-danger')
            layui.event.call(this, MOD_NAME, 'select('+ filter +')', {
              elem: select[0]
              ,value: value
              ,othis: reElem
            });

            hideDown(true);
            return false;
          });
          
          reElem.find('dl>dt').on('click', function(e){
            return false;
          });
          
          $(document).off('click', hide).on('click', hide); //�������Ԫ�عر� select
        }
        
        selects.each(function(index, select){
          var othis = $(this)
          ,hasRender = othis.next('.'+CLASS)
          ,disabled = this.disabled
          ,value = select.value
          ,selected = $(select.options[select.selectedIndex]) //��ȡ��ǰѡ����
          ,optionsFirst = select.options[0];
          
          if(typeof othis.attr('lay-ignore') === 'string') return othis.show();
          
          var isSearch = typeof othis.attr('lay-search') === 'string'
          ,placeholder = optionsFirst ? (
            optionsFirst.value ? TIPS : (optionsFirst.innerHTML || TIPS)
          ) : TIPS;

          //���Ԫ��
          var reElem = $(['<div class="'+ (isSearch ? '' : 'layui-unselect ') + CLASS 
          ,(disabled ? ' layui-select-disabled' : '') +'">'
            ,'<div class="'+ TITLE +'">'
              ,('<input type="text" placeholder="'+ placeholder +'" '
                +('value="'+ (value ? selected.html() : '') +'"') //Ĭ��ֵ
                +(isSearch ? '' : ' readonly') //�Ƿ�������
                +' class="layui-input'
                +(isSearch ? '' : ' layui-unselect') 
              + (disabled ? (' ' + DISABLED) : '') +'">') //����״̬
            ,'<i class="layui-edge"></i></div>'
            ,'<dl class="layui-anim layui-anim-upbit'+ (othis.find('optgroup')[0] ? ' layui-select-group' : '') +'">'
            ,function(options){
              var arr = [];
              layui.each(options, function(index, item){
                if(index === 0 && !item.value){
                  arr.push('<dd lay-value="" class="layui-select-tips">'+ (item.innerHTML || TIPS) +'</dd>');
                } else if(item.tagName.toLowerCase() === 'optgroup'){
                  arr.push('<dt>'+ item.label +'</dt>'); 
                } else {
                  arr.push('<dd lay-value="'+ item.value +'" class="'+ (value === item.value ?  THIS : '') + (item.disabled ? (' '+DISABLED) : '') +'">'+ item.innerHTML +'</dd>');
                }
              });
              arr.length === 0 && arr.push('<dd lay-value="" class="'+ DISABLED +'">û��ѡ��</dd>');
              return arr.join('');
            }(othis.find('*')) +'</dl>'
          ,'</div>'].join(''));
          
          hasRender[0] && hasRender.remove(); //����Ѿ���Ⱦ����Rerender
          othis.after(reElem);          
          events.call(this, reElem, disabled, isSearch);
        });
      }
      //��ѡ��/����
      ,checkbox: function(){
        var CLASS = {
          checkbox: ['layui-form-checkbox', 'layui-form-checked', 'checkbox']
          ,_switch: ['layui-form-switch', 'layui-form-onswitch', 'switch']
        }
        ,checks = elemForm.find('input[type=checkbox]')
        
        ,events = function(reElem, RE_CLASS){
          var check = $(this);
          
          //��ѡ
          reElem.on('click', function(){
            var filter = check.attr('lay-filter') //��ȡ������
            ,text = (check.attr('lay-text')||'').split('|');

            if(check[0].disabled) return;
            
            check[0].checked ? (
              check[0].checked = false
              ,reElem.removeClass(RE_CLASS[1]).find('em').text(text[1])
            ) : (
              check[0].checked = true
              ,reElem.addClass(RE_CLASS[1]).find('em').text(text[0])
            );
            
            layui.event.call(check[0], MOD_NAME, RE_CLASS[2]+'('+ filter +')', {
              elem: check[0]
              ,value: check[0].value
              ,othis: reElem
            });
          });
        }
        
        checks.each(function(index, check){
          var othis = $(this), skin = othis.attr('lay-skin')
          ,text = (othis.attr('lay-text') || '').split('|'), disabled = this.disabled;
          if(skin === 'switch') skin = '_'+skin;
          var RE_CLASS = CLASS[skin] || CLASS.checkbox;
          
          if(typeof othis.attr('lay-ignore') === 'string') return othis.show();
          
          //���Ԫ��
          var hasRender = othis.next('.' + RE_CLASS[0])
          ,reElem = $(['<div class="layui-unselect '+ RE_CLASS[0]
            ,(check.checked ? (' '+ RE_CLASS[1]) : '') //ѡ��״̬
            ,(disabled ? ' layui-checkbox-disbaled '+ DISABLED : '') //����״̬
            ,'"'
            ,(skin ? ' lay-skin="'+ skin +'"' : '') //���
          ,'>'
          ,function(){ //��ͬ��������
            var title = check.title.replace(/\s/g, '')
            ,type = {
              //��ѡ��
              checkbox: [
                (title ? ('<span>'+ check.title +'</span>') : '')
                ,'<i class="layui-icon layui-icon-ok"></i>'
              ].join('')
              
              //����
              ,_switch: '<em>'+ ((check.checked ? text[0] : text[1]) || '') +'</em><i></i>'
            };
            return type[skin] || type['checkbox'];
          }()
          ,'</div>'].join(''));

          hasRender[0] && hasRender.remove(); //����Ѿ���Ⱦ����Rerender
          othis.after(reElem);
          events.call(this, reElem, RE_CLASS);
        });
      }
      //��ѡ��
      ,radio: function(){
        var CLASS = 'layui-form-radio', ICON = ['&#xe643;', '&#xe63f;']
        ,radios = elemForm.find('input[type=radio]')
        
        ,events = function(reElem){
          var radio = $(this), ANIM = 'layui-anim-scaleSpring';
          
          reElem.on('click', function(){
            var name = radio[0].name, forms = radio.parents(ELEM);
            var filter = radio.attr('lay-filter'); //��ȡ������
            var sameRadio = forms.find('input[name='+ name.replace(/(\.|#|\[|\])/g, '\\$1') +']'); //�ҵ���ͬname���ֵ�
            
            if(radio[0].disabled) return;
            
            layui.each(sameRadio, function(){
              var next = $(this).next('.'+CLASS);
              this.checked = false;
              next.removeClass(CLASS+'ed');
              next.find('.layui-icon').removeClass(ANIM).html(ICON[1]);
            });
            
            radio[0].checked = true;
            reElem.addClass(CLASS+'ed');
            reElem.find('.layui-icon').addClass(ANIM).html(ICON[0]);
            
            layui.event.call(radio[0], MOD_NAME, 'radio('+ filter +')', {
              elem: radio[0]
              ,value: radio[0].value
              ,othis: reElem
            });
          });
        };
        
        radios.each(function(index, radio){
          var othis = $(this), hasRender = othis.next('.' + CLASS), disabled = this.disabled;
          
          if(typeof othis.attr('lay-ignore') === 'string') return othis.show();
          hasRender[0] && hasRender.remove(); //����Ѿ���Ⱦ����Rerender
          
          //���Ԫ��
          var reElem = $(['<div class="layui-unselect '+ CLASS 
            ,(radio.checked ? (' '+CLASS+'ed') : '') //ѡ��״̬
          ,(disabled ? ' layui-radio-disbaled '+DISABLED : '') +'">' //����״̬
          ,'<i class="layui-anim layui-icon">'+ ICON[radio.checked ? 0 : 1] +'</i>'
          ,'<div>'+ function(){
            var title = radio.title || '';
            if(typeof othis.next().attr('lay-radio') === 'string'){
              title = othis.next().html();
              othis.next().remove();
            }
            return title
          }() +'</div>'
          ,'</div>'].join(''));

          othis.after(reElem);
          events.call(this, reElem);
        });
      }
    };
    type ? (
      items[type] ? items[type]() : hint.error('��֧�ֵ�'+ type + '����Ⱦ')
    ) : layui.each(items, function(index, item){
      item();
    });
    return that;
  };
  
  //���ύУ��
  var submit = function(){
    var button = $(this), verify = form.config.verify, stop = null
    ,DANGER = 'layui-form-danger', field = {} ,elem = button.parents(ELEM)
    
    ,verifyElem = elem.find('*[lay-verify]') //��ȡ��ҪУ���Ԫ��
    ,formElem = button.parents('form')[0] //��ȡ��ǰ���ڵ�formԪ�أ�������ڵĻ�
    ,fieldElem = elem.find('input,select,textarea') //��ȡ���б���
    ,filter = button.attr('lay-filter'); //��ȡ������
   
    
    //��ʼУ��
    layui.each(verifyElem, function(_, item){
      var othis = $(this)
      ,vers = othis.attr('lay-verify').split('|')
      ,verType = othis.attr('lay-verType') //��ʾ��ʽ
      ,value = othis.val();
      
      othis.removeClass(DANGER);
      layui.each(vers, function(_, thisVer){
        var isTrue //�Ƿ�����У��
        ,errorText = '' //������ʾ�ı�
        ,isFn = typeof verify[thisVer] === 'function';
        
        //ƥ����֤����
        if(verify[thisVer]){
          var isTrue = isFn ? errorText = verify[thisVer](value, item) : !verify[thisVer][0].test(value);
          errorText = errorText || verify[thisVer][1];
          
          //����Ǳ�������߷ǿ�����У�飬����ֹ�ύ��������ʾ
          if(isTrue){
            //��ʾ����
            if(verType === 'tips'){
              layer.tips(errorText, function(){
                if(typeof othis.attr('lay-ignore') !== 'string'){
                  if(item.tagName.toLowerCase() === 'select' || /^checkbox|radio$/.test(item.type)){
                    return othis.next();
                  }
                }
                return othis;
              }(), {tips: 1});
            } else if(verType === 'alert') {
              layer.alert(errorText, {title: '��ʾ', shadeClose: true});
            } else {
              layer.msg(errorText, {icon: 5, shift: 6});
            }
            if(!device.android && !device.ios) item.focus(); //���ƶ��豸�Զ���λ����
            othis.addClass(DANGER);
            return stop = true;
          }
        }
      });
      if(stop) return stop;
    });
    
    if(stop) return false;
    
    var nameIndex = {}; //���� name ����
    layui.each(fieldElem, function(_, item){
      item.name = (item.name || '').replace(/^\s*|\s*&/, '');
      
      if(!item.name) return;
      
      //����֧������ name
      if(/^.*\[\]$/.test(item.name)){
        var key = item.name.match(/^(.*)\[\]$/g)[0];
        nameIndex[key] = nameIndex[key] | 0;
        item.name = item.name.replace(/^(.*)\[\]$/, '$1['+ (nameIndex[key]++) +']');
      }
      
      if(/^checkbox|radio$/.test(item.type) && !item.checked) return;      
      field[item.name] = item.value;
    });
 
    //��ȡ�ֶ�
    return layui.event.call(this, MOD_NAME, 'submit('+ filter +')', {
      elem: this
      ,form: formElem
      ,field: field
    });
  };

  //�Զ������Ⱦ
  var form = new Form()
  ,$dom = $(document), $win = $(window);
  
  form.render();
  
  //��reset������Ⱦ
  $dom.on('reset', ELEM, function(){
    var filter = $(this).attr('lay-filter');
    setTimeout(function(){
      form.render(null, filter);
    }, 50);
  });
  
  //���ύ�¼�
  $dom.on('submit', ELEM, submit)
  .on('click', '*[lay-submit]', submit);
  
  exports(MOD_NAME, form);
});

 

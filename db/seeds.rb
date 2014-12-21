# coding: utf-8

#FactoryGirl.factories.each do |factory|
  # factoryの定義からidとclassを取得(private instance変数のためinstance_variable_getを使う)
#  id = factory.definition.declarations.find { |declaration| declaration.name == :id }.instance_variable_get('@value')
#  klass = factory.instance_variable_get('@class_name')

  # 既に同一idのFactoryが作られている場合は無視、作られていない場合のみ作成
#  unless klass.exists?(id: id)
#    FactoryGirl.create(factory.name)
#  end
#end

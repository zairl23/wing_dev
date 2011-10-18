module ApplicationHelper
  def habtm_checkboxes(obj, column, assignment_objects, assignment_object_display_column)
    obj_to_s    = obj.class.to_s.split("::").last.underscore
    field_name  = "#{obj_to_s}[#{column}][]"
    
    html = hidden_field_tag(field_name, "")
    assignment_objects.each do |assignment_obj|
      cbx_id = "#{obj_to_s}_#{column}_#{assignment_obj.id}"
      html += check_box_tag field_name, assignment_obj.id, obj.send(column).include?(assignment_obj.id), :id => cbx_id
      html += label_tag cbx_id, h(assignment_obj.send(assignment_object_display_column))
      html += content_tag(:br)
    end
    html
  end
  
  #add a url acrooos all controller
  def commitable_url
    instance_variable = instance_variable_get("@#{controller.controller_name.singularize}")
    commitable = controller.controller_name.singularize
    commits_path(:commitable_type => commitable, :commitable_id => instance_variable.id)
  end
end

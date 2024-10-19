<li id="task_<%= task.id %>">
  <%= task.title %>
  <%= link_to 'Mark as Complete', complete_task_path(task), method: :patch, data: { turbo_method: :patch, turbo_frame: "task_#{task.id}" } %>
</li>
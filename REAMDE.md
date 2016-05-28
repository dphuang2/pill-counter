## Notes!
Concepts addressed: controller, tests, routes, erb, file extension names, layouts, views, helpers

Controllers
<ul>
<li> "def" is used to create an action. Ruby can be executed in this defs and @ variables (ie. @x) can be accessed in the views </li>
<li> these actions use routes to figure out which static page to access. (ie. "get 'help' => 'static_pages#help'") </li>
<ul>
<li> You can see that the static_pages#help specifies to run the help action within the static pages controller which corresponds to home erb file under the static_pages file in views </li>
</ul>
</ul>

Tests
<ul>
<li> "TDD" aka Test driven development is the process of writing tests and gradually reaching a "green light" output from "rake test" to develop </li>    
<li> def setup defines variables before tests are run </li>
<li> test is created with [test "should get (view)" do end] </li>
<li> inside a test, run get and assert conditions </li>
</ul>

Routes
<ul>
<li> routes are directions for when link is accessed (ie. /static_pages/about) </li>
<li> It directs a HTTP get request to a certain view in which the controller will run an action and generate the view </li>
</ul>

erb
<ul>
<li> embedded ruby inside html </li>
<li> syntax: <%= ... %> for outputting html code from ruby or <% ... %> for just running ruby code </li>
</ul>

FEN
<ul>
<li> .css.scsss </li>
<li> .js.coffee </li>
</ul>

Layouts
<ul>
<li> The overall HTML template for a certain controller </li>
<li> <%= yield %> is where the view file's html will be placed </li>
<li> <%= render 'layouts/...' %> is where you can put partials </li>
</ul>

Views
<ul>
<li> The html that is going to put in the <%= yield %> </li>
<li> Can retrieve @variables from controller to be used to generate the view </li>
</ul>

Helpers
<ul>
<li> basically a file to define functions that can be used throughout the application </li>
</ul>

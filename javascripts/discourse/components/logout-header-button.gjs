import DButton from "discourse/components/d-button";
import routeAction from "discourse/helpers/route-action";

let LogoutHeaderButton;

if (settings.hide_log_out_text_in_header) {
  LogoutHeaderButton = <template>
    <li class="logout">
      <DButton
        @action={{routeAction "logout"}}
        class="btn-flat icon"
        @icon="sign-out-alt"
        @title="user.log_out"
      />
    </li>
  </template>;
} else {
  LogoutHeaderButton = <template>
    <li class="logout">
      <DButton
        @action={{routeAction "logout"}}
        class="btn-flat icon"
        @icon="sign-out-alt"
        @title="user.log_out"
        @label="user.log_out"
      />
    </li>
  </template>;
}
export default LogoutHeaderButton;

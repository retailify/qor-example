<form action="{{mountpathed "recover"}}" method="POST">
  <label style="margin-bottom:0px;" for="{{.primaryID}}">{{ t "recover.email" }}</label>
  <input type="text" name="{{.primaryID}}" value="{{.primaryIDValue}}" /><br />
  {{$pid := .primaryID}}{{with .errs}}{{with $errlist := index . $pid}}{{range $errlist}}<span>{{.}}</span><br />{{end}}{{end}}{{end}}
  <label style="margin-bottom:0px;" for="{{.primaryID}}">{{ t "recover.confirm_email" }}</label>
  <input type="text" name="confirm_{{.primaryID}}" value="{{.confirmPrimaryIDValue}}" /><br />
  {{$cpid := .primaryID | printf "confirm_%s"}}{{with .errs}}{{with $errlist := index . $cpid}}{{range $errlist}}<span>{{.}}</span><br />{{end}}{{end}}{{end}}
  <input type="hidden" name="{{.xsrfName}}" value="{{.xsrfToken}}" />
  <button type="submit">{{ t "recover.button" }}</button><br />
</form>
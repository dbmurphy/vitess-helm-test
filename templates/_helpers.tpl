{{- define "vitess.fullname" -}}
{{- .Release.Name | lower }}-{{ .Chart.Name }}
{{- end }}

{{- define "vitess.labels" -}}
app.kubernetes.io/name: {{ include "vitess.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

apiVersion: v1
kind: Service
metadata:
  name: llama-firewall
  namespace: {{ .Values.global.namespace }}
spec:
  selector:
    app: llama-firewall
  ports:
    - protocol: TCP
      port: {{ .Values.service.port | default 8000 }}
      targetPort: {{ .Values.service.targetPort | default 8000 }}
  type: ClusterIP

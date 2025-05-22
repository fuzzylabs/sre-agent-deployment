apiVersion: apps/v1
kind: Deployment
metadata:
  name: llama-firewall
  namespace: {{ .Values.global.namespace }}
  labels:
    app: llama-firewall
spec:
  replicas: {{ .Values.deployment.replicaCount | default 1 }}
  selector:
    matchLabels:
      app: llama-firewall
  template:
    metadata:
      labels:
        app: llama-firewall
    spec:
      containers:
        - name: llama-firewall
          image: "{{ .Values.global.containerRegistryAddress }}mcp/llama-firewall:{{ .Values.deployment.image.tag | default "latest" }}"
          imagePullPolicy: {{ .Values.deployment.image.pullPolicy }}
          ports:
            - containerPort: {{ .Values.deployment.containerPort | default 80 }}
          env:
            - name: HF_TOKEN
              valueFrom:
                secretKeyRef:
                  name: "{{ .Release.Name }}-secret"
                  key: HF_TOKEN

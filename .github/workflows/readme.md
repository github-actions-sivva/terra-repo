name: GCP Instance List

on: workflow_dispatch
jobs:
  list-instances:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v2

      - name: Set up Google Cloud SDK
        uses: google-github-actions/setup-gcloud@v0.4.0
        with:
          service_account_key: ${{ secrets.GCP_SVC_ACCOUNT }}
          project_id: quantum-weft-420714

      - name: List instances
        run: gcloud compute instances list
      - name: Auth list
        run: gcloud auth list
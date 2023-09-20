import { Layout, LegacyCard, Page } from "@shopify/polaris";

export default function ProductAPI() {
  return (
    <Page
      title="Billing API"
      backAction={{ content: "Home", onAction: () => navigate("/debug") }}
    >
      <Layout>
        <Layout.Section oneHalf>
          <LegacyCard
            sectioned
            title="Product list"
          >
            <p>product listing</p>
          </LegacyCard>
        </Layout.Section>
      </Layout>
    </Page>
  );
}

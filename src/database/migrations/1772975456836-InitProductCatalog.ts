import { MigrationInterface, QueryRunner } from 'typeorm';

export class InitProductCatalog1772975456836 implements MigrationInterface {
  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(`CREATE TABLE categories (
    category_id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
    name text NOT NULL,
    slug text NOT NULL UNIQUE,
    description text NOT NULL,
    created_at timestamptz NOT NULL DEFAULT now(),
    updated_at timestamptz NOT NULL DEFAULT now(),
    deleted_at timestamptz
);`);

    await queryRunner.query(
      `CREATE INDEX idx_categories_slug ON categories(slug);`,
    );

    await queryRunner.query(`CREATE TABLE products (
    product_id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
    name text NOT NULL,
    slug text NOT NULL UNIQUE,
    description text NOT NULL,
    image_url text,
    created_at timestamptz NOT NULL DEFAULT now(),
    updated_at timestamptz NOT NULL DEFAULT now(),
    deleted_at timestamptz
);`);
    await queryRunner.query(
      `CREATE INDEX idx_products_slug ON products(slug);`,
    );

    await queryRunner.query(`CREATE TABLE product_categories (
    product_id uuid NOT NULL REFERENCES products(product_id) ON DELETE CASCADE,
    category_id uuid NOT NULL REFERENCES categories(category_id) ON DELETE CASCADE,
    PRIMARY KEY (product_id, category_id)
);`);

    await queryRunner.query(
      `CREATE INDEX idx_product_categories_category_id ON product_categories(category_id);`,
    );

    await queryRunner.query(`CREATE TABLE variants (
    variant_id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
    product_id uuid NOT NULL REFERENCES products(product_id) ON DELETE CASCADE,
    attributes jsonb NOT NULL DEFAULT '{}'::jsonb,
    sku text NOT NULL UNIQUE,
    price numeric(10, 2) NOT NULL,
    created_at timestamptz NOT NULL DEFAULT now(),
    updated_at timestamptz NOT NULL DEFAULT now(),
    deleted_at timestamptz
);`);

    await queryRunner.query(
      `CREATE INDEX idx_variants_product_id ON variants(product_id);`,
    );

    await queryRunner.query(`CREATE INDEX idx_variants_sku ON variants(sku);`);
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(`DROP TABLE IF EXISTS variants;`);
    await queryRunner.query(`DROP TABLE IF EXISTS product_categories;`);
    await queryRunner.query(`DROP TABLE IF EXISTS products;`);
    await queryRunner.query(`DROP TABLE IF EXISTS categories;`);
  }
}

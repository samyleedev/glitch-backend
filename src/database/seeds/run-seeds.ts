import { AppDataSource } from '../data-source';
import * as fs from 'fs';
import * as path from 'path';

async function runSeeds() {
  try {
    console.log('🔄 Initialisation de la base de données pour les seeds...');
    await AppDataSource.initialize();
    console.log('✅ Base de données connectée !');

    const seedsDirectory = path.join(__dirname, 'data');

    if (!fs.existsSync(seedsDirectory)) {
      console.log(
        `⚠️ Le dossier ${seedsDirectory} n'existe pas. Création en cours...`,
      );
      fs.mkdirSync(seedsDirectory, { recursive: true });
      console.log('💡 Dossier créé ! Ajoute tes fichiers .sql dedans.');
      return;
    }

    const files = fs.readdirSync(seedsDirectory);

    const sqlFiles = files.filter((file) => file.endsWith('.sql')).sort();

    if (sqlFiles.length === 0) {
      console.log('🤷 Aucun fichier SQL trouvé dans le dossier seeds/data.');
      return;
    }
    for (const file of sqlFiles) {
      console.log(`⏳ Exécution de : ${file}...`);

      const filePath = path.join(seedsDirectory, file);
      const sqlContent = fs.readFileSync(filePath, 'utf-8');

      await AppDataSource.query(sqlContent);

      console.log(`✅ Succès : ${file}`);
    }

    console.log('🎉 Tous les seeds ont été insérés avec succès !');
  } catch (error) {
    console.error("❌ Erreur fatale lors de l'exécution des seeds :", error);
  } finally {
    if (AppDataSource.isInitialized) {
      await AppDataSource.destroy();
      console.log('🔌 Connexion à la base de données fermée.');
    }
  }
}

runSeeds();

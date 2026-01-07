import Link from 'next/link';

export default function Home() {
  return (
    <main className="bg-background-main text-text-primary">
      {/* 1. Hero Section */}
      <section className="bg-white text-center py-20 px-4">
        <h1 className="text-4xl md:text-5xl font-display font-bold text-text-primary mb-4">
          Trouvez le talent idéal. Décrochez la mission parfaite.
        </h1>
        <p className="text-lg text-text-secondary max-w-2xl mx-auto mb-8">
          IPPOO WORK connecte les entreprises innovantes avec les meilleurs experts pour des missions à forte valeur ajoutée.
        </p>
        <div className="flex justify-center gap-4">
          <Link href="/inscription?role=entreprise" className="bg-primary text-white font-semibold py-3 px-6 rounded-lg shadow-md hover:bg-opacity-90 transition-colors">
            Je cherche un talent
          </Link>
          <Link href="/inscription?role=candidat" className="bg-secondary text-white font-semibold py-3 px-6 rounded-lg shadow-md hover:bg-opacity-90 transition-colors">
            Je cherche une mission
          </Link>
        </div>
      </section>

      {/* 2. Section Confiance (Social Proof) */}
      <section className="py-12 bg-gray-100">
        <div className="container mx-auto text-center">
          <h2 className="text-sm font-bold uppercase text-text-secondary mb-6">Ils nous font confiance</h2>
          <div className="flex justify-center items-center gap-8 md:gap-12">
            <span className="text-gray-400 font-medium text-xl font-display">Innovatech</span>
            <span className="text-gray-400 font-medium text-xl font-display">Quantum Solutions</span>
            <span className="text-gray-400 font-medium text-xl font-display">Digital Horizon</span>
          </div>
        </div>
      </section>

      {/* 3. Section Fonctionnement */}
      <section className="py-20 px-4">
        <div className="container mx-auto text-center">
          <h2 className="text-3xl font-bold font-display text-text-primary mb-3">Trouver, collaborer, réussir.</h2>
          <p className="text-text-secondary mb-12">En 3 étapes simples.</p>
          <div className="grid md:grid-cols-3 gap-8">
            {/* Card 1 */}
            <div className="bg-white p-8 rounded-lg border border-border-main">
              <h3 className="text-xl font-semibold font-display text-text-primary mb-2">Publiez votre besoin</h3>
              <p className="text-text-secondary">
                Décrivez votre projet en quelques minutes. Notre IA analyse votre demande pour cibler les meilleurs profils.
              </p>
            </div>
            {/* Card 2 */}
            <div className="bg-white p-8 rounded-lg border border-border-main">
              <h3 className="text-xl font-semibold font-display text-text-primary mb-2">Recevez des propositions</h3>
              <p className="text-text-secondary">
                Accédez à une sélection de candidats qualifiés, testés et prêts à démarrer.
              </p>
            </div>
            {/* Card 3 */}
            <div className="bg-white p-8 rounded-lg border border-border-main">
              <h3 className="text-xl font-semibold font-display text-text-primary mb-2">Gérez tout en un seul lieu</h3>
              <p className="text-text-secondary">
                Suivez l'avancement, communiquez et effectuez les paiements en toute sécurité depuis votre tableau de bord.
              </p>
            </div>
          </div>
        </div>
      </section>

      {/* 4. Section Avantages */}
      <section className="py-20 px-4 bg-gray-100">
        <div className="container mx-auto grid md:grid-cols-2 gap-12 items-center">
          {/* Colonne 1: Pour les Talents */}
          <div className="bg-white p-8 rounded-lg border border-border-main">
            <h3 className="text-2xl font-bold font-display text-text-primary mb-4">Boostez votre carrière.</h3>
            <ul className="space-y-3 text-text-secondary">
              <li>✓ Des missions exclusives qui correspondent à vos compétences.</li>
              <li>✓ Un profil unique pour mettre en valeur votre expertise.</li>
              <li>✓ Des paiements rapides et sécurisés.</li>
            </ul>
            <Link href="/inscription?role=candidat" className="mt-6 inline-block bg-secondary text-white font-semibold py-3 px-6 rounded-lg shadow-md hover:bg-opacity-90 transition-colors">
              Créer mon profil
            </Link>
          </div>
          {/* Colonne 2: Pour les Entreprises */}
          <div className="bg-white p-8 rounded-lg border border-border-main">
            <h3 className="text-2xl font-bold font-display text-text-primary mb-4">Recrutez plus intelligemment.</h3>
            <ul className="space-y-3 text-text-secondary">
              <li>✓ Accédez à un vivier de talents vérifiés.</li>
              <li>✓ Réduisez vos délais de recrutement de 50%.</li>
              <li>✓ Gérez vos contrats et paiements sans effort.</li>
            </ul>
            <Link href="/inscription?role=entreprise" className="mt-6 inline-block bg-primary text-white font-semibold py-3 px-6 rounded-lg shadow-md hover:bg-opacity-90 transition-colors">
              Publier une offre
            </Link>
          </div>
        </div>
      </section>

      {/* 5. Section Témoignages */}
      <section className="py-20 px-4">
        <div className="container mx-auto text-center">
          <h2 className="text-3xl font-bold font-display text-text-primary mb-12">Ce que nos utilisateurs disent de nous</h2>
          <div className="grid md:grid-cols-2 gap-8 text-left">
            {/* Témoignage 1 */}
            <div className="bg-white p-8 rounded-lg border border-border-main">
              <p className="text-text-secondary italic mb-4">
                "Grâce à IPPOO WORK, nous avons trouvé un développeur expert en 48h. Le processus est d'une fluidité incroyable."
              </p>
              <p className="font-semibold text-text-primary">CEO, Innovatech</p>
            </div>
            {/* Témoignage 2 */}
            <div className="bg-white p-8 rounded-lg border border-border-main">
              <p className="text-text-secondary italic mb-4">
                "La plateforme m'a permis d'accéder à des missions passionnantes qui ne sont nulle part ailleurs. Mon activité a décollé."
              </p>
              <p className="font-semibold text-text-primary">Développeur Full-Stack</p>
            </div>
          </div>
        </div>
      </section>

      {/* 6. Section CTA Final */}
      <section className="bg-white py-20 px-4">
        <div className="container mx-auto text-center bg-primary text-white p-12 rounded-lg">
          <h2 className="text-3xl font-bold font-display mb-4">Prêt à transformer votre manière de travailler ?</h2>
          <p className="text-gray-300 max-w-2xl mx-auto mb-8">
            Rejoignez des milliers d'entreprises et de talents qui construisent le futur du travail.
          </p>
          <Link href="/inscription" className="bg-accent text-primary font-bold py-4 px-8 rounded-lg shadow-lg hover:bg-opacity-90 transition-colors">
            Commencer l'aventure
          </Link>
        </div>
      </section>

    </main>
  );
}

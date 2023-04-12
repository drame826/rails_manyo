require 'rails_helper'

RSpec.describe 'Fonction de modèle de tâche', type: :model do
  describe 'Essai de validation' do
    context 'Si le titre de la tâche est vide' do
      it 'échoue la validation' do
        task = Task.create(title: '', content: 'Créez un plan.')
        expect(task).not_to be_valid
      end
    end

    context 'Si la description de la tâche est vide' do
      it 'échoue la validation' do
        task = Task.create(title: 'Donne un titre', content: '')
        expect(task).not_to be_valid
      end
    end

    context 'Si le titre et la description de la tâche ont des valeurs' do
      it 'Peut enregistrer des tâches' do
        task = Task.create(title: 'Donne un titre', content: 'Créez un plan')
        expect(task).to be_valid
      end
    end
  end
end

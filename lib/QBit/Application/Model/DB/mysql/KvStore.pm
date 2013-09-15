package QBit::Application::Model::DB::mysql::KvStore;

use qbit;

use base qw(QBit::Application::Model::DB::mysql QBit::Application::Model::DB::KvStore);

__PACKAGE__->meta(
    tables => {
        kv_store => {
            fields => [
                {name => 'key',   type => 'VARCHAR', length => 255, not_null => 1, default => ''},
                {name => 'value', type => 'VARCHAR', length => 255, not_null => 1, default => ''},
                {name => 'last_change',   type => 'TIMESTAMP', not_null => 1},
            ],
            primary_key => [qw(key)],
        },
    },
);

TRUE;
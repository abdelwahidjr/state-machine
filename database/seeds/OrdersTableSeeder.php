<?php

use Illuminate\Database\Seeder;
use Faker\Factory;

class OrdersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker = Factory::create();
        if (app()->environment() !== 'production') {
            foreach (range(0, 10) as $index) {
                \App\Order::create([
                    'title' => $faker->sentence(3),
                    'state' => ["new"]
                ]);
            }
        }
    }
}

<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

$cred_env = ($_SERVER['HTTP_HOST'] == 'apple.loc') ? 'dev' : 'prod';

global $cred;

require_once 'credentials.php';

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', $cred[$cred_env]['db_name'] );

/** MySQL database username */
define( 'DB_USER', $cred[$cred_env]['db_user'] );

/** MySQL database password */
define( 'DB_PASSWORD', $cred[$cred_env]['db_password'] );

/** MySQL hostname */
define( 'DB_HOST', $cred[$cred_env]['db_host'] );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '5/mD^[bd_^>+[w.b|&rx&&CWJJT98@HojQ 3JM2;9JiX1@?^zN!.w2kd`du]86%#' );
define( 'SECURE_AUTH_KEY',  'Q$d0(E%xd1GkH9/s4e<fLPe6d|jHzUYs7PD`IqL]N]LrK!`0t_7+A|_<7jkl68@p' );
define( 'LOGGED_IN_KEY',    '91ZX?d]HqRL&^FZL`}UC>!f7ZVxb74$FgIIcD4@@`)q^N~9)7m$XsH&+p}uvIUNm' );
define( 'NONCE_KEY',        '7cAxK;RQwF1AvF;Q!ix=M2ct++m:d^3#,];}73}|vJqs$?f6uFy:8<el:Bz^}-4K' );
define( 'AUTH_SALT',        '#?&qN]dtHa$+48QsF9V9=vtOZpf T;&b+6Iaz7$ DVj1K(!~bU+=gz!rRZ)|?MKt' );
define( 'SECURE_AUTH_SALT', 'jrc/5DdVY4{(H&z6RA!tl@)atRUvi6Tg*f}raHZCMFXvRX-~ye/VL&y>ff%U^R^o' );
define( 'LOGGED_IN_SALT',   'j:y=/K6yFP/Lypwfmf6$eV*HG;YLk`veAl~DCHwo=b<kM1?><7=)A;K5XSQb_C2g' );
define( 'NONCE_SALT',       'mSoCDfWjfTor=p$.d^6.4){n)fom+l@IMDPlY(Z/lSNEE^Nz[K.2Y!q0B#l.!uvo' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

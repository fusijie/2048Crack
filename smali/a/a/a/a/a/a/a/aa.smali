.class public final La/a/a/a/a/a/a/aa;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final d:[B


# instance fields
.field private b:Ljava/util/Hashtable;

.field private c:Ljava/util/Properties;

.field private e:La/a/a/a/a/b/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x8

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.ibm.ssl.protocol"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.ibm.ssl.contextProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.ibm.ssl.keyStore"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.ibm.ssl.keyStorePassword"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.ibm.ssl.keyStoreType"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.ibm.ssl.keyStoreProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.ibm.ssl.keyManager"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.ibm.ssl.trustStore"

    aput-object v2, v0, v1

    const-string v1, "com.ibm.ssl.trustStorePassword"

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const-string v2, "com.ibm.ssl.trustStoreType"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.ibm.ssl.trustStoreProvider"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.ibm.ssl.trustManager"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.ibm.ssl.enabledCipherSuites"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.ibm.ssl.clientAuthentication"

    aput-object v2, v0, v1

    sput-object v0, La/a/a/a/a/a/a/aa;->a:[Ljava/lang/String;

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, La/a/a/a/a/a/a/aa;->d:[B

    return-void

    :array_0
    .array-data 0x1
        0x9dt
        0xa7t
        0xd9t
        0x80t
        0x5t
        0xb8t
        0x89t
        0x9ct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/a/aa;->b:Ljava/util/Hashtable;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, La/a/a/a/a/a/a/aa;->c:Ljava/util/Properties;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    if-eqz p2, :cond_1

    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([C)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-nez p0, :cond_1

    :goto_1
    array-length v2, v0

    if-lt v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{xor}"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, La/a/a/a/a/a/a/ab;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    :goto_2
    array-length v3, p0

    if-lt v0, v3, :cond_2

    move-object v0, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v2, 0x1

    aget-char v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v2, v0, 0x1

    aget-char v0, p0, v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    move v0, v2

    move v2, v3

    goto :goto_2

    :cond_3
    aget-byte v2, v0, v1

    sget-object v3, La/a/a/a/a/a/a/aa;->d:[B

    sget-object v4, La/a/a/a/a/a/a/aa;->d:[B

    array-length v4, v4

    rem-int v4, v1, v4

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)[C
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a/a/a/a/a/a/ab;->a(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move v0, v1

    :goto_1
    array-length v3, v4

    if-lt v0, v3, :cond_1

    if-nez v4, :cond_2

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :cond_1
    aget-byte v3, v4, v0

    sget-object v5, La/a/a/a/a/a/a/aa;->d:[B

    sget-object v6, La/a/a/a/a/a/a/aa;->d:[B

    array-length v6, v6

    rem-int v6, v0, v6

    aget-byte v5, v5, v6

    xor-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    array-length v0, v4

    div-int/lit8 v0, v0, 0x2

    new-array v3, v0, [C

    move v2, v1

    :goto_2
    array-length v0, v4

    if-lt v2, v0, :cond_3

    move-object v0, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v5, v2, 0x1

    aget-byte v2, v4, v2

    and-int/lit16 v6, v2, 0xff

    add-int/lit8 v2, v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v1

    move v1, v0

    goto :goto_2
.end method

.method private static b(Ljava/util/Properties;)V
    .locals 2

    const-string v0, "com.ibm.ssl.keyStorePassword"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "{xor}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, La/a/a/a/a/a/a/aa;->a([C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ibm.ssl.keyStorePassword"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "com.ibm.ssl.trustStorePassword"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "{xor}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, La/a/a/a/a/a/a/aa;->a([C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ibm.ssl.trustStorePassword"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private c()Ljavax/net/ssl/SSLContext;
    .locals 10

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "com.ibm.ssl.protocol"

    invoke-direct {p0, v0, v1}, La/a/a/a/a/a/a/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "TLS"

    :cond_0
    iget-object v2, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    if-eqz v2, :cond_1

    iget-object v2, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "null (broker defaults)"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    :cond_1
    const-string v2, "com.ibm.ssl.contextProvider"

    invoke-direct {p0, v2, v1}, La/a/a/a/a/a/a/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    :try_start_0
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    move-object v7, v0

    :goto_0
    iget-object v0, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "null (broker defaults)"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    :cond_2
    const-string v0, "com.ibm.ssl.keyStore"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, La/a/a/a/a/a/a/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v0, "com.ibm.ssl.keyStore"

    const-string v2, "javax.net.ssl.keyStore"

    invoke-direct {p0, v0, v2}, La/a/a/a/a/a/a/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_3
    iget-object v0, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    if-eqz v0, :cond_4

    iget-object v0, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v3, "null (broker defaults)"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    if-eqz v5, :cond_f

    move-object v0, v5

    :goto_1
    aput-object v0, v2, v3

    :cond_4
    const-string v0, "com.ibm.ssl.keyStorePassword"

    const-string v2, "javax.net.ssl.keyStorePassword"

    invoke-direct {p0, v0, v2}, La/a/a/a/a/a/a/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    const-string v2, "{xor}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {v0}, La/a/a/a/a/a/a/aa;->a(Ljava/lang/String;)[C

    move-result-object v0

    move-object v4, v0

    :goto_2
    iget-object v0, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    if-eqz v0, :cond_5

    iget-object v0, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v3, "null (broker defaults)"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    if-eqz v4, :cond_11

    invoke-static {v4}, La/a/a/a/a/a/a/aa;->a([C)Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, v2, v3

    :cond_5
    const-string v0, "com.ibm.ssl.keyStoreType"

    const-string v2, "javax.net.ssl.keyStoreType"

    invoke-direct {p0, v0, v2}, La/a/a/a/a/a/a/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    :cond_6
    iget-object v0, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    if-eqz v0, :cond_7

    iget-object v0, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v6, "null (broker defaults)"

    aput-object v6, v2, v0

    const/4 v6, 0x1

    if-eqz v3, :cond_12

    move-object v0, v3

    :goto_4
    aput-object v0, v2, v6

    :cond_7
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    const-string v0, "com.ibm.ssl.keyStoreProvider"

    const/4 v6, 0x0

    invoke-direct {p0, v0, v6}, La/a/a/a/a/a/a/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "com.ibm.ssl.keyManager"

    const-string v8, "ssl.KeyManagerFactory.algorithm"

    invoke-direct {p0, v0, v8}, La/a/a/a/a/a/a/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    if-eqz v0, :cond_1f

    :goto_5
    if-eqz v5, :cond_1e

    if-eqz v3, :cond_1e

    if-eqz v0, :cond_1e

    :try_start_1
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    if-eqz v6, :cond_13

    invoke-static {v0, v6}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    :goto_6
    iget-object v5, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    if-eqz v5, :cond_8

    iget-object v5, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "null (broker defaults)"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    if-eqz v0, :cond_14

    :goto_7
    aput-object v0, v5, v6

    iget-object v0, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "null (broker defaults)"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    :cond_8
    invoke-virtual {v2, v3, v4}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v0

    move-object v6, v0

    :goto_8
    :try_start_2
    const-string v0, "com.ibm.ssl.trustStore"

    const-string v2, "javax.net.ssl.trustStore"

    invoke-direct {p0, v0, v2}, La/a/a/a/a/a/a/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    if-eqz v0, :cond_9

    iget-object v0, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v3, "null (broker defaults)"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    if-eqz v5, :cond_15

    move-object v0, v5

    :goto_9
    aput-object v0, v2, v3

    :cond_9
    const-string v0, "com.ibm.ssl.trustStorePassword"

    const-string v2, "javax.net.ssl.trustStorePassword"

    invoke-direct {p0, v0, v2}, La/a/a/a/a/a/a/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v2, "{xor}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {v0}, La/a/a/a/a/a/a/aa;->a(Ljava/lang/String;)[C

    move-result-object v0

    move-object v4, v0

    :goto_a
    iget-object v0, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    if-eqz v0, :cond_a

    iget-object v0, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v3, "null (broker defaults)"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    if-eqz v4, :cond_17

    invoke-static {v4}, La/a/a/a/a/a/a/aa;->a([C)Ljava/lang/String;

    move-result-object v0

    :goto_b
    aput-object v0, v2, v3

    :cond_a
    const-string v0, "com.ibm.ssl.trustStoreType"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, La/a/a/a/a/a/a/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    :cond_b
    iget-object v0, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    if-eqz v0, :cond_c

    iget-object v0, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v8, "null (broker defaults)"

    aput-object v8, v2, v0

    const/4 v8, 0x1

    if-eqz v3, :cond_18

    move-object v0, v3

    :goto_c
    aput-object v0, v2, v8

    :cond_c
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    const-string v0, "com.ibm.ssl.trustStoreProvider"

    const/4 v8, 0x0

    invoke-direct {p0, v0, v8}, La/a/a/a/a/a/a/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "com.ibm.ssl.trustManager"

    const-string v9, "ssl.TrustManagerFactory.algorithm"

    invoke-direct {p0, v0, v9}, La/a/a/a/a/a/a/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v0

    if-eqz v0, :cond_1c

    :goto_d
    if-eqz v5, :cond_1b

    if-eqz v3, :cond_1b

    if-eqz v0, :cond_1b

    :try_start_3
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    if-eqz v8, :cond_19

    invoke-static {v0, v8}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    :goto_e
    iget-object v3, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    if-eqz v3, :cond_d

    iget-object v3, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "null (broker defaults)"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    if-eqz v0, :cond_1a

    :goto_f
    aput-object v0, v3, v4

    iget-object v0, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "null (broker defaults)"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    :cond_d
    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_10
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {v7, v6, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object v7

    :cond_e
    invoke-static {v0, v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_0

    :cond_f
    const-string v0, "null"

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_2

    :cond_11
    const-string v0, "null"

    goto/16 :goto_3

    :cond_12
    const-string v0, "null"
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_4

    :cond_13
    :try_start_5
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    goto/16 :goto_6

    :cond_14
    const-string v0, "null"
    :try_end_5
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_7

    :catch_0
    move-exception v0

    :try_start_6
    new-instance v1, La/a/a/a/a/am;

    invoke-direct {v1, v0}, La/a/a/a/a/am;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_1
    move-exception v0

    new-instance v1, La/a/a/a/a/am;

    invoke-direct {v1, v0}, La/a/a/a/a/am;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    :try_start_7
    new-instance v1, La/a/a/a/a/am;

    invoke-direct {v1, v0}, La/a/a/a/a/am;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_7 .. :try_end_7} :catch_5

    :catch_3
    move-exception v0

    new-instance v1, La/a/a/a/a/am;

    invoke-direct {v1, v0}, La/a/a/a/a/am;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    :try_start_8
    new-instance v1, La/a/a/a/a/am;

    invoke-direct {v1, v0}, La/a/a/a/a/am;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    move-exception v0

    new-instance v1, La/a/a/a/a/am;

    invoke-direct {v1, v0}, La/a/a/a/a/am;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    :try_start_9
    new-instance v1, La/a/a/a/a/am;

    invoke-direct {v1, v0}, La/a/a/a/a/am;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_7
    move-exception v0

    new-instance v1, La/a/a/a/a/am;

    invoke-direct {v1, v0}, La/a/a/a/a/am;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_15
    const-string v0, "null"

    goto/16 :goto_9

    :cond_16
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_a

    :cond_17
    const-string v0, "null"

    goto/16 :goto_b

    :cond_18
    const-string v0, "null"
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_c

    :cond_19
    :try_start_a
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    goto/16 :goto_e

    :cond_1a
    const-string v0, "null"
    :try_end_a
    .catch Ljava/security/KeyStoreException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_f

    :catch_8
    move-exception v0

    :try_start_b
    new-instance v1, La/a/a/a/a/am;

    invoke-direct {v1, v0}, La/a/a/a/a/am;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_9
    move-exception v0

    new-instance v1, La/a/a/a/a/am;

    invoke-direct {v1, v0}, La/a/a/a/a/am;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_a
    move-exception v0

    new-instance v1, La/a/a/a/a/am;

    invoke-direct {v1, v0}, La/a/a/a/a/am;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_b
    move-exception v0

    new-instance v1, La/a/a/a/a/am;

    invoke-direct {v1, v0}, La/a/a/a/a/am;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_b .. :try_end_b} :catch_5

    :cond_1b
    move-object v0, v1

    goto/16 :goto_10

    :cond_1c
    move-object v0, v2

    goto/16 :goto_d

    :cond_1d
    move-object v4, v1

    goto/16 :goto_a

    :cond_1e
    move-object v6, v1

    goto/16 :goto_8

    :cond_1f
    move-object v0, v2

    goto/16 :goto_5

    :cond_20
    move-object v4, v1

    goto/16 :goto_2
.end method


# virtual methods
.method public final a(Ljava/util/Properties;)V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, La/a/a/a/a/a/a/aa;->b(Ljava/util/Properties;)V

    iput-object v0, p0, La/a/a/a/a/a/a/aa;->c:Ljava/util/Properties;

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v1, v2

    :goto_0
    sget-object v4, La/a/a/a/a/a/a/aa;->a:[Ljava/lang/String;

    array-length v4, v4

    if-lt v1, v4, :cond_3

    :cond_2
    sget-object v4, La/a/a/a/a/a/a/aa;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " is not a valid IBM SSL property key."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    sget-object v4, La/a/a/a/a/a/a/aa;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public final a()[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/16 v4, 0x2c

    const-string v1, "com.ibm.ssl.enabledCipherSuites"

    invoke-direct {p0, v1, v0}, La/a/a/a/a/a/a/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-gez v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_1
.end method

.method public final b()Ljavax/net/ssl/SSLSocketFactory;
    .locals 5

    invoke-direct {p0}, La/a/a/a/a/a/a/aa;->c()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iget-object v0, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/a/aa;->e:La/a/a/a/a/b/ab;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v3, "null (broker defaults)"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    invoke-virtual {p0}, La/a/a/a/a/a/a/aa;->a()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "com.ibm.ssl.enabledCipherSuites"

    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, La/a/a/a/a/a/a/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    :cond_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "null (using platform-enabled cipher suites)"

    goto :goto_0
.end method

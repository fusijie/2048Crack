.class final Lcom/nextpeer/android/bn;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/security/MessageDigest;

.field private final d:Ljavax/crypto/SecretKey;

.field private final e:Ljavax/crypto/spec/IvParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nextpeer/android/bn;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nextpeer/android/bn;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nextpeer/android/bn;->b:Ljava/lang/String;

    invoke-static {}, Lcom/nextpeer/android/bn;->b()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/bn;->c:Ljava/security/MessageDigest;

    iget-object v0, p0, Lcom/nextpeer/android/bn;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lcom/nextpeer/android/bn;->a(Ljava/lang/String;II)[B

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/bn;->b:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-static {v1, v3, v2}, Lcom/nextpeer/android/bn;->a(Ljava/lang/String;II)[B

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/bn;->c:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    iget-object v2, p0, Lcom/nextpeer/android/bn;->c:Ljava/security/MessageDigest;

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lcom/nextpeer/android/bn;->c:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/nextpeer/android/bn;->d:Ljavax/crypto/SecretKey;

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v0, p0, Lcom/nextpeer/android/bn;->e:Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0}, Lcom/nextpeer/android/bn;->d()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    throw v0

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;II)[B
    .locals 6

    const/16 v5, 0x10

    sub-int v0, p2, p1

    new-array v2, v0, [B

    mul-int/lit8 v1, p1, 0x2

    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v3, p2, 0x2

    if-lt v1, v3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b()Ljava/security/MessageDigest;
    .locals 1

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "NPPushMessageDecoder - Failed to initialize MD5."

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Ljavax/crypto/Cipher;
    .locals 4

    const-string v0, "AES/CBC/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nextpeer/android/bn;->d:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lcom/nextpeer/android/bn;->e:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object v0
.end method

.method private d()Ljava/lang/Exception;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/nextpeer/android/bn;->c()Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Push Key is invalid!"

    invoke-static {v1}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Failed to init cipher!"

    invoke-static {v1}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "Failed to init cipher!"

    invoke-static {v1}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "Push Key IV is invalid!"

    invoke-static {v1}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()Ljavax/crypto/Cipher;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/nextpeer/android/bn;->c()Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/nextpeer/android/bn;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should be checked in Ctor"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception v0

    sget-boolean v0, Lcom/nextpeer/android/bn;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should be checked in Ctor"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_2
    move-exception v0

    sget-boolean v0, Lcom/nextpeer/android/bn;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should be checked in Ctor"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_3
    move-exception v0

    sget-boolean v0, Lcom/nextpeer/android/bn;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should be checked in Ctor"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/nextpeer/android/bn;->a:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This line should not be reached!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/bn;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a([B)Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/nextpeer/android/bn;->e()Ljavax/crypto/Cipher;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while decrypting message! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

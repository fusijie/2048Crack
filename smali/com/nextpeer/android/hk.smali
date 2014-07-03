.class final Lcom/nextpeer/android/hk;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/nextpeer/android/hg;

.field private h:Lcom/nextpeer/android/hg;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/nextpeer/android/hk;->a:Ljava/lang/String;

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/nextpeer/android/hk;->b:I

    iput-object v2, p0, Lcom/nextpeer/android/hk;->c:Ljava/lang/String;

    const/16 v0, 0x32

    iput v0, p0, Lcom/nextpeer/android/hk;->d:I

    iput-object v2, p0, Lcom/nextpeer/android/hk;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/nextpeer/android/hk;->f:Ljava/lang/String;

    invoke-static {}, Lcom/nextpeer/android/hk;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/hk;->a:Ljava/lang/String;

    invoke-static {}, Lcom/nextpeer/android/hk;->e()I

    move-result v0

    iput v0, p0, Lcom/nextpeer/android/hk;->b:I

    invoke-static {}, Lcom/nextpeer/android/hk;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/hk;->c:Ljava/lang/String;

    invoke-static {}, Lcom/nextpeer/android/hk;->g()I

    move-result v0

    iput v0, p0, Lcom/nextpeer/android/hk;->d:I

    invoke-static {}, Lcom/nextpeer/android/hk;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "npName"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/hk;->e:Ljava/lang/String;

    invoke-static {}, Lcom/nextpeer/android/hk;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "npAvatarUrl"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/hk;->f:Ljava/lang/String;

    invoke-static {}, Lcom/nextpeer/android/hk;->c()Lcom/nextpeer/android/hg;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/hk;->g:Lcom/nextpeer/android/hg;

    invoke-static {}, Lcom/nextpeer/android/hk;->d()Lcom/nextpeer/android/hg;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/hk;->h:Lcom/nextpeer/android/hg;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/hk;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "npCookies"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/nextpeer/android/hg;)V
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/hk;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "npLUCSL"

    invoke-virtual {p0}, Lcom/nextpeer/android/hg;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static c()Lcom/nextpeer/android/hg;
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/hk;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "npLUCSL"

    sget-object v2, Lcom/nextpeer/android/hg;->a:Lcom/nextpeer/android/hg;

    invoke-virtual {v2}, Lcom/nextpeer/android/hg;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/nextpeer/android/hg;->a(I)Lcom/nextpeer/android/hg;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/nextpeer/android/hg;
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/hk;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "npNUCSL"

    sget-object v2, Lcom/nextpeer/android/hg;->a:Lcom/nextpeer/android/hg;

    invoke-virtual {v2}, Lcom/nextpeer/android/hg;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/nextpeer/android/hg;->a(I)Lcom/nextpeer/android/hg;

    move-result-object v0

    return-object v0
.end method

.method public static e()I
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/hk;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "npGameId"

    const/16 v2, -0x3e7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/nextpeer/android/au;->a()Lcom/nextpeer/android/au;

    move-result-object v3

    if-eqz p0, :cond_1

    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    move-object v2, v1

    :goto_1
    const-string v1, "PBEWithMD5AndDES"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IM_1983_7_3_NP"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/nextpeer/android/au;->v()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/nextpeer/android/au;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v1, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    const-string v4, "PBEWithMD5AndDES"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v3}, Lcom/nextpeer/android/au;->d()Ljava/lang/String;

    move-result-object v3

    const-string v7, "utf-8"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/16 v7, 0x14

    invoke-direct {v6, v3, v7}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-virtual {v4, v5, v1, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/hk;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "npPSK"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/hk;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/nextpeer/android/au;->a()Lcom/nextpeer/android/au;

    move-result-object v3

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    move-object v2, v1

    :goto_1
    const-string v1, "PBEWithMD5AndDES"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IM_1983_7_3_NP"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/nextpeer/android/au;->v()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/nextpeer/android/au;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v1, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    const-string v4, "PBEWithMD5AndDES"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x2

    new-instance v6, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v3}, Lcom/nextpeer/android/au;->d()Ljava/lang/String;

    move-result-object v3

    const-string v7, "utf-8"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/16 v7, 0x14

    invoke-direct {v6, v3, v7}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-virtual {v4, v5, v1, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static g()I
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/hk;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "npPSKAI"

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static j()Landroid/content/SharedPreferences;
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NPPrefrences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iput p1, p0, Lcom/nextpeer/android/hk;->b:I

    invoke-static {}, Lcom/nextpeer/android/hk;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "npGameId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/nextpeer/android/hk;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/nextpeer/android/hk;->a:Ljava/lang/String;

    invoke-static {}, Lcom/nextpeer/android/hk;->j()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "npCookies"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final b()Lcom/nextpeer/android/hg;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hk;->g:Lcom/nextpeer/android/hg;

    return-object v0
.end method

.method public final b(I)V
    .locals 3

    iput p1, p0, Lcom/nextpeer/android/hk;->d:I

    iget v0, p0, Lcom/nextpeer/android/hk;->d:I

    invoke-static {}, Lcom/nextpeer/android/hk;->j()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "npPSKAI"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final b(Lcom/nextpeer/android/hg;)V
    .locals 3

    iput-object p1, p0, Lcom/nextpeer/android/hk;->h:Lcom/nextpeer/android/hg;

    iget-object v0, p0, Lcom/nextpeer/android/hk;->h:Lcom/nextpeer/android/hg;

    invoke-static {}, Lcom/nextpeer/android/hk;->j()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "npNUCSL"

    invoke-virtual {v0}, Lcom/nextpeer/android/hg;->a()I

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/nextpeer/android/hk;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/nextpeer/android/hk;->c:Ljava/lang/String;

    invoke-static {}, Lcom/nextpeer/android/hk;->j()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "npPSK"

    invoke-static {v0}, Lcom/nextpeer/android/hk;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/nextpeer/android/hk;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/nextpeer/android/hk;->e:Ljava/lang/String;

    invoke-static {}, Lcom/nextpeer/android/hk;->j()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "npName"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/nextpeer/android/hk;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/nextpeer/android/hk;->f:Ljava/lang/String;

    invoke-static {}, Lcom/nextpeer/android/hk;->j()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "npAvatarUrl"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hk;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hk;->f:Ljava/lang/String;

    return-object v0
.end method

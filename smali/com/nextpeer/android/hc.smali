.class final Lcom/nextpeer/android/hc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/hc$aa;,
        Lcom/nextpeer/android/hc$ab;
    }
.end annotation


# static fields
.field private static a:Lcom/nextpeer/android/hc;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/nextpeer/android/hc$aa;

.field private final g:Lcom/nextpeer/android/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nextpeer/android/ar",
            "<",
            "Lcom/nextpeer/android/hc$ab;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/nextpeer/android/hq;

.field private volatile i:Z

.field private j:Lcom/nextpeer/android/ay;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nextpeer/android/hc;->a:Lcom/nextpeer/android/hc;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/nextpeer/android/hc;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/nextpeer/android/hc;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/nextpeer/android/hc;->d:Ljava/lang/String;

    iput-object v3, p0, Lcom/nextpeer/android/hc;->e:Ljava/lang/String;

    sget-object v0, Lcom/nextpeer/android/hc$aa;->a:Lcom/nextpeer/android/hc$aa;

    iput-object v0, p0, Lcom/nextpeer/android/hc;->f:Lcom/nextpeer/android/hc$aa;

    new-instance v0, Lcom/nextpeer/android/ar;

    invoke-direct {v0}, Lcom/nextpeer/android/ar;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/hc;->g:Lcom/nextpeer/android/ar;

    iput-object v3, p0, Lcom/nextpeer/android/hc;->h:Lcom/nextpeer/android/hq;

    iput-boolean v2, p0, Lcom/nextpeer/android/hc;->i:Z

    iput-object v3, p0, Lcom/nextpeer/android/hc;->j:Lcom/nextpeer/android/ay;

    iput-object v3, p0, Lcom/nextpeer/android/hc;->k:Ljava/util/Map;

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NPPrefrences"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "npUserId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "npUserId"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/hc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nextpeer/android/hc;->b:Ljava/lang/String;

    const-string v1, "npUserToken"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/hc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nextpeer/android/hc;->c:Ljava/lang/String;

    const-string v1, "npUserType"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/hc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/nextpeer/android/hc$aa;->a(I)Lcom/nextpeer/android/hc$aa;

    move-result-object v1

    iput-object v1, p0, Lcom/nextpeer/android/hc;->f:Lcom/nextpeer/android/hc$aa;

    :cond_0
    iget-object v1, p0, Lcom/nextpeer/android/hc;->f:Lcom/nextpeer/android/hc$aa;

    if-nez v1, :cond_1

    sget-object v1, Lcom/nextpeer/android/hc$aa;->a:Lcom/nextpeer/android/hc$aa;

    iput-object v1, p0, Lcom/nextpeer/android/hc;->f:Lcom/nextpeer/android/hc$aa;

    :cond_1
    iget-object v1, p0, Lcom/nextpeer/android/hc;->f:Lcom/nextpeer/android/hc$aa;

    sget-object v2, Lcom/nextpeer/android/hc$aa;->b:Lcom/nextpeer/android/hc$aa;

    if-ne v1, v2, :cond_3

    const-string v1, "npFBUserId"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/hc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nextpeer/android/hc;->d:Ljava/lang/String;

    const-string v1, "npFBAccessToken"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/hc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/hc;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/nextpeer/android/hc;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/hc;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/nextpeer/android/hc$aa;->a:Lcom/nextpeer/android/hc$aa;

    iput-object v0, p0, Lcom/nextpeer/android/hc;->f:Lcom/nextpeer/android/hc$aa;

    iput-object v3, p0, Lcom/nextpeer/android/hc;->d:Ljava/lang/String;

    iput-object v3, p0, Lcom/nextpeer/android/hc;->e:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public static a()Lcom/nextpeer/android/hc;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/hc;->a:Lcom/nextpeer/android/hc;

    return-object v0
.end method

.method static synthetic a(Lcom/nextpeer/android/hc;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/hc;->o()V

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/hc;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/hc;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/hc;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lcom/a/a/ba;

    invoke-direct {v1}, Lcom/a/a/ba;-><init>()V

    invoke-static {p1}, Lcom/a/a/ba;->a(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/av;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/a/a/av;->k()Lcom/a/a/ay;

    move-result-object v1

    const-string v2, "isNew"

    invoke-virtual {v1, v2}, Lcom/a/a/ay;->b(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/av;->e()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "userUuid"

    invoke-virtual {v1, v2}, Lcom/a/a/ay;->b(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/av;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sessionToken"

    invoke-virtual {v1, v3}, Lcom/a/a/ay;->b(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/av;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/nextpeer/android/hc$aa;->a:Lcom/nextpeer/android/hc$aa;

    invoke-direct {p0, v2, v1, v3}, Lcom/nextpeer/android/hc;->a(Ljava/lang/String;Ljava/lang/String;Lcom/nextpeer/android/hc$aa;)V

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v1

    sget-object v2, Lcom/nextpeer/android/hc$aa;->a:Lcom/nextpeer/android/hc$aa;

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/Nextpeer;->a(Lcom/nextpeer/android/hc$aa;)V

    invoke-direct {p0, v0}, Lcom/nextpeer/android/hc;->a(Ljava/lang/Boolean;)V

    const-string v0, "User registration completed"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "User registration failed due to JSON parse problem"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nextpeer/android/hc;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "User registration failed due to JSON parse error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nextpeer/android/hc;->o()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/nextpeer/android/hc;Ljava/lang/String;Ljava/lang/String;Lcom/nextpeer/android/hc$aa;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nextpeer/android/hc;->a(Ljava/lang/String;Ljava/lang/String;Lcom/nextpeer/android/hc$aa;)V

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/hc;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User registration failed with error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nextpeer/android/hc;->o()V

    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/hc;->h:Lcom/nextpeer/android/hq;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/hc;->i:Z

    iget-object v0, p0, Lcom/nextpeer/android/hc;->g:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hc;->g:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    return-void

    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/hc;->g:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/hc$ab;

    invoke-interface {v0, p1}, Lcom/nextpeer/android/hc$ab;->onRegisterUserSuccessfully(Ljava/lang/Boolean;)V

    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/nextpeer/android/hc$aa;)V
    .locals 3

    iput-object p1, p0, Lcom/nextpeer/android/hc;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/nextpeer/android/hc;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/nextpeer/android/hc;->f:Lcom/nextpeer/android/hc$aa;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/hc;->k:Ljava/util/Map;

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NPPrefrences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "npUserId"

    invoke-static {p1}, Lcom/nextpeer/android/hc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "npUserToken"

    invoke-static {p2}, Lcom/nextpeer/android/hc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "npUserType"

    iget-object v2, p0, Lcom/nextpeer/android/hc;->f:Lcom/nextpeer/android/hc$aa;

    invoke-virtual {v2}, Lcom/nextpeer/android/hc$aa;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nextpeer/android/hc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
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

.method public static b()V
    .locals 1

    sget-object v0, Lcom/nextpeer/android/hc;->a:Lcom/nextpeer/android/hc;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nextpeer/android/hc;

    invoke-direct {v0}, Lcom/nextpeer/android/hc;-><init>()V

    sput-object v0, Lcom/nextpeer/android/hc;->a:Lcom/nextpeer/android/hc;

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
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

.method private o()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/hc;->h:Lcom/nextpeer/android/hq;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/hc;->i:Z

    iget-object v0, p0, Lcom/nextpeer/android/hc;->g:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hc;->g:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    return-void

    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/hc;->g:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/hc$ab;

    invoke-interface {v0}, Lcom/nextpeer/android/hc$ab;->onRegisterUserFailed()V

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/nextpeer/android/hc$ab;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hc;->g:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/ar;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/hc;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/nextpeer/android/hc;->f:Lcom/nextpeer/android/hc$aa;

    invoke-direct {p0, v0, p1, v1}, Lcom/nextpeer/android/hc;->a(Ljava/lang/String;Ljava/lang/String;Lcom/nextpeer/android/hc$aa;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/nextpeer/android/hc;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/hc;->i:Z

    sget-object v0, Lcom/nextpeer/android/hc$aa;->a:Lcom/nextpeer/android/hc$aa;

    invoke-direct {p0, p1, p2, v0}, Lcom/nextpeer/android/hc;->a(Ljava/lang/String;Ljava/lang/String;Lcom/nextpeer/android/hc$aa;)V

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    sget-object v1, Lcom/nextpeer/android/hc$aa;->a:Lcom/nextpeer/android/hc$aa;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/Nextpeer;->a(Lcom/nextpeer/android/hc$aa;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nextpeer/android/hc;->a(Ljava/lang/Boolean;)V

    const-string v0, "User login completed"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Lcom/nextpeer/android/hc$ab;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hc;->g:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/ar;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/nextpeer/android/hc;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/nextpeer/android/hc;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/hc;->k:Ljava/util/Map;

    sget-object v0, Lcom/nextpeer/android/hc$aa;->b:Lcom/nextpeer/android/hc$aa;

    iput-object v0, p0, Lcom/nextpeer/android/hc;->f:Lcom/nextpeer/android/hc$aa;

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NPPrefrences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "npFBUserId"

    iget-object v2, p0, Lcom/nextpeer/android/hc;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/nextpeer/android/hc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "npFBAccessToken"

    iget-object v2, p0, Lcom/nextpeer/android/hc;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/nextpeer/android/hc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/nextpeer/android/hc;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/hc;->i:Z

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    move-result-object v0

    new-instance v1, Lcom/nextpeer/android/he;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/he;-><init>(Lcom/nextpeer/android/hc;)V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ho;->b(Lcom/nextpeer/android/hr;)Lcom/nextpeer/android/hq;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/hc;->h:Lcom/nextpeer/android/hq;

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    move-result-object v0

    new-instance v1, Lcom/nextpeer/android/hf;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/hf;-><init>(Lcom/nextpeer/android/hc;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/nextpeer/android/ho;->a(Lcom/nextpeer/android/hr;Ljava/lang/String;Ljava/lang/String;)Lcom/nextpeer/android/hq;

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hc;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hc;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nextpeer/android/hc;->k:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hc;->k:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nextpeer/android/hc;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/hc;->k:Ljava/util/Map;

    iget-object v0, p0, Lcom/nextpeer/android/hc;->k:Ljava/util/Map;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/nextpeer/android/hc;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nextpeer/android/hc;->k:Ljava/util/Map;

    const-string v1, "sessionToken"

    iget-object v2, p0, Lcom/nextpeer/android/hc;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nextpeer/android/hc;->f:Lcom/nextpeer/android/hc$aa;

    iget-object v1, p0, Lcom/nextpeer/android/hc;->k:Ljava/util/Map;

    const-string v2, "accountType"

    invoke-virtual {v0}, Lcom/nextpeer/android/hc$aa;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nextpeer/android/hc$aa;->b:Lcom/nextpeer/android/hc$aa;

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lcom/nextpeer/android/hc;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nextpeer/android/hc;->k:Ljava/util/Map;

    const-string v2, "socialId"

    iget-object v3, p0, Lcom/nextpeer/android/hc;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/nextpeer/android/hc;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nextpeer/android/hc;->k:Ljava/util/Map;

    const-string v2, "socialToken"

    iget-object v3, p0, Lcom/nextpeer/android/hc;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/nextpeer/android/hc;->k:Ljava/util/Map;

    const-string v2, "socialAccountType"

    invoke-virtual {v0}, Lcom/nextpeer/android/hc$aa;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "sdk_version"

    const-string v1, "3.5.2"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getActiveSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/nextpeer/android/facebook/Session;

    invoke-direct {v0, v2}, Lcom/nextpeer/android/facebook/Session;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/nextpeer/android/facebook/Session;->setActiveSession(Lcom/nextpeer/android/facebook/Session;)V

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_5

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd kk:mm:ss ZZ"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/nextpeer/android/facebook/internal/Utility;->getFacebookCookies(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "cookies"

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "access_token"

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "expiration"

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance v0, Lcom/a/a/ak;

    invoke-direct {v0}, Lcom/a/a/ak;-><init>()V

    invoke-virtual {v0, v3}, Lcom/a/a/ak;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/hc;->k:Ljava/util/Map;

    const-string v2, "socialCredentials"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, p0, Lcom/nextpeer/android/hc;->k:Ljava/util/Map;

    goto/16 :goto_0

    :cond_7
    move-object v1, v0

    goto :goto_1
.end method

.method public final e()V
    .locals 2

    invoke-virtual {p0}, Lcom/nextpeer/android/hc;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/hc;->i:Z

    invoke-virtual {p0}, Lcom/nextpeer/android/hc;->m()V

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    move-result-object v0

    new-instance v1, Lcom/nextpeer/android/hd;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/hd;-><init>(Lcom/nextpeer/android/hc;)V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ho;->b(Lcom/nextpeer/android/hr;)Lcom/nextpeer/android/hq;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/hc;->h:Lcom/nextpeer/android/hq;

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hc;->h:Lcom/nextpeer/android/hq;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    iget-object v0, p0, Lcom/nextpeer/android/hc;->h:Lcom/nextpeer/android/hq;

    invoke-static {v0}, Lcom/nextpeer/android/ho;->a(Lcom/nextpeer/android/hq;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/hc;->h:Lcom/nextpeer/android/hq;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/hc;->i:Z

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/hc;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/hc;->h:Lcom/nextpeer/android/hq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hc;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hc;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hc;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Lcom/nextpeer/android/hc$aa;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/hc;->f:Lcom/nextpeer/android/hc$aa;

    return-object v0
.end method

.method public final m()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/hc;->f:Lcom/nextpeer/android/hc$aa;

    sget-object v2, Lcom/nextpeer/android/hc$aa;->b:Lcom/nextpeer/android/hc$aa;

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lcom/nextpeer/android/ay;->a(Landroid/content/Context;)V

    :cond_0
    iput-object v3, p0, Lcom/nextpeer/android/hc;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/nextpeer/android/hc;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/nextpeer/android/hc;->k:Ljava/util/Map;

    iput-object v3, p0, Lcom/nextpeer/android/hc;->d:Ljava/lang/String;

    iput-object v3, p0, Lcom/nextpeer/android/hc;->e:Ljava/lang/String;

    sget-object v1, Lcom/nextpeer/android/hc$aa;->a:Lcom/nextpeer/android/hc$aa;

    iput-object v1, p0, Lcom/nextpeer/android/hc;->f:Lcom/nextpeer/android/hc$aa;

    iput-object v3, p0, Lcom/nextpeer/android/hc;->j:Lcom/nextpeer/android/ay;

    const-string v1, "NPPrefrences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "npUserId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "npUserToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "npUserType"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "npFBUserId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "npFBAccessToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final n()Lcom/nextpeer/android/ay;
    .locals 2

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/hc;->j:Lcom/nextpeer/android/ay;

    if-nez v0, :cond_2

    new-instance v0, Lcom/nextpeer/android/ay;

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nextpeer/android/ay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nextpeer/android/hc;->j:Lcom/nextpeer/android/ay;

    :cond_2
    iget-object v0, p0, Lcom/nextpeer/android/hc;->j:Lcom/nextpeer/android/ay;

    goto :goto_0
.end method

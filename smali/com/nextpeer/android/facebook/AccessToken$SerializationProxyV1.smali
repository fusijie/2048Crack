.class Lcom/nextpeer/android/facebook/AccessToken$SerializationProxyV1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/AccessToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxyV1"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2288d511ce8549edL


# instance fields
.field private final expires:Ljava/util/Date;

.field private final lastRefresh:Ljava/util/Date;

.field private final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Lcom/nextpeer/android/facebook/AccessTokenSource;

.field private final token:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/nextpeer/android/facebook/AccessTokenSource;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nextpeer/android/facebook/AccessTokenSource;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nextpeer/android/facebook/AccessToken$SerializationProxyV1;->expires:Ljava/util/Date;

    iput-object p3, p0, Lcom/nextpeer/android/facebook/AccessToken$SerializationProxyV1;->permissions:Ljava/util/List;

    iput-object p1, p0, Lcom/nextpeer/android/facebook/AccessToken$SerializationProxyV1;->token:Ljava/lang/String;

    iput-object p4, p0, Lcom/nextpeer/android/facebook/AccessToken$SerializationProxyV1;->source:Lcom/nextpeer/android/facebook/AccessTokenSource;

    iput-object p5, p0, Lcom/nextpeer/android/facebook/AccessToken$SerializationProxyV1;->lastRefresh:Ljava/util/Date;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/nextpeer/android/facebook/AccessTokenSource;Ljava/util/Date;Lcom/nextpeer/android/facebook/AccessToken$SerializationProxyV1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/nextpeer/android/facebook/AccessToken$SerializationProxyV1;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/nextpeer/android/facebook/AccessTokenSource;Ljava/util/Date;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 6

    new-instance v0, Lcom/nextpeer/android/facebook/AccessToken;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AccessToken$SerializationProxyV1;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/nextpeer/android/facebook/AccessToken$SerializationProxyV1;->expires:Ljava/util/Date;

    iget-object v3, p0, Lcom/nextpeer/android/facebook/AccessToken$SerializationProxyV1;->permissions:Ljava/util/List;

    iget-object v4, p0, Lcom/nextpeer/android/facebook/AccessToken$SerializationProxyV1;->source:Lcom/nextpeer/android/facebook/AccessTokenSource;

    iget-object v5, p0, Lcom/nextpeer/android/facebook/AccessToken$SerializationProxyV1;->lastRefresh:Ljava/util/Date;

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/nextpeer/android/facebook/AccessTokenSource;Ljava/util/Date;)V

    return-object v0
.end method

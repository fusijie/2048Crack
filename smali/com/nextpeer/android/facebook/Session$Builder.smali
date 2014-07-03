.class public final Lcom/nextpeer/android/facebook/Session$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private applicationId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private tokenCachingStrategy:Lcom/nextpeer/android/facebook/TokenCachingStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final build()Lcom/nextpeer/android/facebook/Session;
    .locals 4

    new-instance v0, Lcom/nextpeer/android/facebook/Session;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session$Builder;->applicationId:Ljava/lang/String;

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Session$Builder;->tokenCachingStrategy:Lcom/nextpeer/android/facebook/TokenCachingStrategy;

    invoke-direct {v0, v1, v2, v3}, Lcom/nextpeer/android/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/facebook/TokenCachingStrategy;)V

    return-object v0
.end method

.method public final setApplicationId(Ljava/lang/String;)Lcom/nextpeer/android/facebook/Session$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session$Builder;->applicationId:Ljava/lang/String;

    return-object p0
.end method

.method public final setTokenCachingStrategy(Lcom/nextpeer/android/facebook/TokenCachingStrategy;)Lcom/nextpeer/android/facebook/Session$Builder;
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session$Builder;->tokenCachingStrategy:Lcom/nextpeer/android/facebook/TokenCachingStrategy;

    return-object p0
.end method

.class Lcom/inmobi/commons/cache/ProductCacheConfig$b;
.super Ljava/lang/Object;
.source "ProductCacheConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/cache/ProductCacheConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/commons/cache/ProductCacheConfig;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method private constructor <init>(Lcom/inmobi/commons/cache/ProductCacheConfig;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/inmobi/commons/cache/ProductCacheConfig$b;->a:Lcom/inmobi/commons/cache/ProductCacheConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/inmobi/commons/cache/ProductCacheConfig;Lcom/inmobi/commons/cache/ProductCacheConfig$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/inmobi/commons/cache/ProductCacheConfig$b;-><init>(Lcom/inmobi/commons/cache/ProductCacheConfig;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/commons/cache/ProductCacheConfig$b;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/inmobi/commons/cache/ProductCacheConfig$b;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/inmobi/commons/cache/ProductCacheConfig$b;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/commons/cache/ProductCacheConfig$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/inmobi/commons/cache/ProductCacheConfig$b;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/inmobi/commons/cache/ProductCacheConfig$b;)J
    .locals 2
    .parameter

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/inmobi/commons/cache/ProductCacheConfig$b;->c:J

    return-wide v0
.end method

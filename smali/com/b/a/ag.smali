.class public final Lcom/b/a/ag;
.super Lcom/b/a/an;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/an",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lcom/b/a/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/b/a/ag;

    invoke-direct {v0}, Lcom/b/a/ag;-><init>()V

    sput-object v0, Lcom/b/a/ag;->b:Lcom/b/a/ag;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/an;-><init>()V

    return-void
.end method

.method public static a()Lcom/b/a/ag;
    .locals 1

    sget-object v0, Lcom/b/a/ag;->b:Lcom/b/a/ag;

    return-object v0
.end method

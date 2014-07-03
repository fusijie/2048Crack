.class public final enum Lcom/nextpeer/android/gx$af$ad;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/gx$af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ad"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/gx$af$ad;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nextpeer/android/gx$af$ad;

.field public static final enum b:Lcom/nextpeer/android/gx$af$ad;

.field public static final enum c:Lcom/nextpeer/android/gx$af$ad;

.field private static final synthetic e:[Lcom/nextpeer/android/gx$af$ad;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nextpeer/android/gx$af$ad;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/nextpeer/android/gx$af$ad;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/gx$af$ad;->a:Lcom/nextpeer/android/gx$af$ad;

    new-instance v0, Lcom/nextpeer/android/gx$af$ad;

    const-string v1, "FACEBOOK_WEB"

    invoke-direct {v0, v1, v3, v3}, Lcom/nextpeer/android/gx$af$ad;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/gx$af$ad;->b:Lcom/nextpeer/android/gx$af$ad;

    new-instance v0, Lcom/nextpeer/android/gx$af$ad;

    const-string v1, "FACEBOOK_SSO"

    invoke-direct {v0, v1, v4, v4}, Lcom/nextpeer/android/gx$af$ad;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/gx$af$ad;->c:Lcom/nextpeer/android/gx$af$ad;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nextpeer/android/gx$af$ad;

    sget-object v1, Lcom/nextpeer/android/gx$af$ad;->a:Lcom/nextpeer/android/gx$af$ad;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nextpeer/android/gx$af$ad;->b:Lcom/nextpeer/android/gx$af$ad;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/gx$af$ad;->c:Lcom/nextpeer/android/gx$af$ad;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nextpeer/android/gx$af$ad;->e:[Lcom/nextpeer/android/gx$af$ad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nextpeer/android/gx$af$ad;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/gx$af$ad;
    .locals 1

    const-class v0, Lcom/nextpeer/android/gx$af$ad;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/gx$af$ad;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/gx$af$ad;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/gx$af$ad;->e:[Lcom/nextpeer/android/gx$af$ad;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/gx$af$ad;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/gx$af$ad;->d:I

    return v0
.end method

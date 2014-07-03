.class final enum Lcom/nextpeer/android/hg;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/hg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nextpeer/android/hg;

.field public static final enum b:Lcom/nextpeer/android/hg;

.field public static final enum c:Lcom/nextpeer/android/hg;

.field public static final enum d:Lcom/nextpeer/android/hg;

.field private static final synthetic f:[Lcom/nextpeer/android/hg;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nextpeer/android/hg;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/nextpeer/android/hg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/hg;->a:Lcom/nextpeer/android/hg;

    new-instance v0, Lcom/nextpeer/android/hg;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3, v3}, Lcom/nextpeer/android/hg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/hg;->b:Lcom/nextpeer/android/hg;

    new-instance v0, Lcom/nextpeer/android/hg;

    const-string v1, "FIRST_INTERACTION"

    invoke-direct {v0, v1, v4, v4}, Lcom/nextpeer/android/hg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/hg;->c:Lcom/nextpeer/android/hg;

    new-instance v0, Lcom/nextpeer/android/hg;

    const-string v1, "TOURNAMENT_RESULTS"

    invoke-direct {v0, v1, v5, v5}, Lcom/nextpeer/android/hg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/hg;->d:Lcom/nextpeer/android/hg;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nextpeer/android/hg;

    sget-object v1, Lcom/nextpeer/android/hg;->a:Lcom/nextpeer/android/hg;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nextpeer/android/hg;->b:Lcom/nextpeer/android/hg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/hg;->c:Lcom/nextpeer/android/hg;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nextpeer/android/hg;->d:Lcom/nextpeer/android/hg;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nextpeer/android/hg;->f:[Lcom/nextpeer/android/hg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nextpeer/android/hg;->e:I

    return-void
.end method

.method public static a(I)Lcom/nextpeer/android/hg;
    .locals 5

    invoke-static {}, Lcom/nextpeer/android/hg;->values()[Lcom/nextpeer/android/hg;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    sget-object v0, Lcom/nextpeer/android/hg;->a:Lcom/nextpeer/android/hg;

    :cond_0
    return-object v0

    :cond_1
    aget-object v0, v2, v1

    iget v4, v0, Lcom/nextpeer/android/hg;->e:I

    if-eq v4, p0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/hg;
    .locals 1

    const-class v0, Lcom/nextpeer/android/hg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/hg;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/hg;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/hg;->f:[Lcom/nextpeer/android/hg;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/hg;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/hg;->e:I

    return v0
.end method
